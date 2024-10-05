import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/dimensions.dart';
import 'package:fab_tech_sol/providers/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AnimatedSearchBar {
  Widget foldAgentField() {
    return Consumer<UserProvider>(
      builder: (context, userProvider, child) {
        return _buildSearchBar(
          context,
          userProvider.isFoldedAgentField,
          userProvider.toggleFoldAgentField,
        );
      },
    );
  }

  Widget foldSupplierField() {
    return Consumer<UserProvider>(
      builder: (context, userProvider, child) {
        return _buildSearchBar(
          context,
          userProvider.isFoldedSupplierField,
          userProvider.toggleFoldSupplierField,
        );
      },
    );
  }

  Widget foldPackageField() {
    return Consumer<UserProvider>(
      builder: (context, userProvider, child) {
        return _buildSearchBar(
          context,
          userProvider.isFoldedPackageField,
          userProvider.toggleFoldPackageField,
        );
      },
    );
  }

  Widget _buildSearchBar(BuildContext context, bool isFolded, VoidCallback toggleFold) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 250),
      width: isFolded ? 56 : context.screenWidth * 0.36,
      height: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        color: isFolded ? appBackgroundColor : whiteColor,
      ),
      child: Row(
        children: [
          Expanded(
              child: Container(
                  padding: const EdgeInsets.only(left: 15),
                  child: !isFolded
                      ? TextField(
                          decoration: InputDecoration(
                              contentPadding: const EdgeInsets.only(top: -20),
                              hintText: 'Search',
                              hintStyle: TextStyle(
                                  color: greyColor,
                                  fontFamily: readexPro,
                                  fontSize: 13),
                              border: InputBorder.none),
                        )
                      : null)),
          AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            child: GestureDetector(
                onTap: toggleFold,
                child: Padding(
                  padding: EdgeInsets.only(right: isFolded ? 0 : 12),
                  child: Icon(
                    isFolded ? Icons.search : Icons.close,
                    size: isFolded ? 28 : 20,
                    color: mobileLeadText1Color,
                  ),
                )),
          )
        ],
      ),
    );
  }
}
