import 'package:fab_tech_sol/AppColor/app_color.dart';
import 'package:fab_tech_sol/Dialog/agent_dialog.dart';
import 'package:fab_tech_sol/Dialog/international_edit_dialog.dart';
import 'package:fab_tech_sol/Dialog/localsupplier_dialog.dart';
import 'package:fab_tech_sol/Screen/addnewinternationalsuppliers.dart';
import 'package:fab_tech_sol/Screen/local_supplier_detail.dart';
import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/widgets/widgets.dart';
import 'package:flutter/material.dart';

import '../widget/agent_text_field.dart';
import '../widget/delContainer.dart';

class SupplierTask {
  final String companyName;
  final String supplierName;
  final String supplierAddress;
  final String service;
  final String companyAddress;
  final String status;
  final String action;

  SupplierTask(
    this.companyName,
    this.supplierName,
    this.supplierAddress,
    this.service,
    this.companyAddress,
    this.status,
    this.action,
  );
}

class TaskDataSource extends DataTableSource {
  final List<SupplierTask> tasks;
  BuildContext context;

  TaskDataSource(this.tasks, this.context);

  @override
  DataRow? getRow(int index) {
    // if (index >= tasks.length || index < 0) return null;
    assert(index >= 0);

    final task = tasks[index];
    return DataRow.byIndex(
      index: index,
      cells: [
        DataCell(GestureDetector(
            onTap: () {},
            child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LocalSupplierDetail(),
                      ));
                },
                child: Text(task.companyName)))),
        DataCell(Text(task.supplierName)),
        DataCell(Text(task.supplierAddress)),
        DataCell(Text(task.service)),
        DataCell(Text(task.action)),
        DataCell(Text(task.companyAddress)),
        DataCell(Row(
          children: [
            Padding(
                padding: const EdgeInsets.all(5),
                child: Widgets().editDelContainer(
                  context,
                  () {
                    showDialog(
                      context: context,
                      builder: (context) => LocalsupplierDialog(),
                    );
                  },
                  () {},
                ))
          ],
        )),
      ],
    );
  }

  @override
  int get rowCount => tasks.length;

  @override
  bool get isRowCountApproximate => false;

  @override
  int get selectedRowCount => 0;
}

class AgentsTask {
  final String name;
  final String phoneNumber;
  final String email;
  final String location;
  final String status;
  final String action;

  AgentsTask(this.name, this.phoneNumber, this.email, this.location,
      this.status, this.action);
}

class AgentsTaskDataSource extends DataTableSource {
  final List<AgentsTask> agentsTasks;
  BuildContext context;

  AgentsTaskDataSource(this.agentsTasks, this.context);

  @override
  DataRow? getRow(int index) {
    if (index >= agentsTasks.length || index < 0) return null;
    final AgentsTask task = agentsTasks[index];
    return DataRow.byIndex(
      index: index,
      cells: [
        DataCell(Row(
          children: [
            Widgets().circularAvatar(backgroundImage: '${imageUrl}agent.png'),
            Text(task.name)
          ],
        )),
        DataCell(Text(task.phoneNumber)),
        DataCell(Text(task.email)),
        DataCell(Text(task.location)),
        DataCell(Text(task.status)),
        DataCell(Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(5),
              child: Widgets().editDelContainer(
                context,
                () {
                  showDialog(
                    context: context,
                    builder: (context) => AgentDialog(),
                  );
                },
                () {},
              ),
            )
          ],
        )),
      ],
    );
  }

  @override
  int get rowCount => agentsTasks.length;

  @override
  bool get isRowCountApproximate => false;

  @override
  int get selectedRowCount => 0;
}

class InternationalSupplier {
  final String companyName;
  final String Unknown;
  final String phoneNumber;
  final String service;
  final String unknown;
  final String location;
  final String status;
  final String action;

  InternationalSupplier(this.companyName, this.Unknown, this.phoneNumber,
      this.service, this.unknown, this.location, this.status, this.action);
}

class InternationalDataSource extends DataTableSource {
  BuildContext context;
  final List<InternationalSupplier> international;

  InternationalDataSource(this.international, this.context);

  @override
  DataRow? getRow(
    int index,
  ) {
    if (index >= international.length || index < 0) return null;
    final InternationalSupplier task = international[index];
    return DataRow.byIndex(
      index: index,
      cells: [
        DataCell(Text(task.companyName)),
        DataCell(Text(task.Unknown)),
        DataCell(Text(task.phoneNumber)),
        DataCell(Text(task.service)),
        DataCell(Text(task.unknown)),
        DataCell(Text(task.location)),
        DataCell(Text(task.status)),
        DataCell(Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(5),
              child: Widgets().editDelContainer(
                context,
                () {
                  showDialog(
                    context: context,
                    builder: (context) => InternationalEditDialog(),
                  );
                },
                () {},
              ),
            )
          ],
        )),
      ],
    );
  }

  @override
  int get rowCount => international.length;

  @override
  bool get isRowCountApproximate => false;

  @override
  int get selectedRowCount => 0;
}

class PackageModel {
  final String clientName;
  final String clientPhoneNumber;
  final String agentName;
  final String agentPhoneNumber;
  final String supplierName;
  final String supplierPhoneNumber;
  final String supplierType;
  final String action;

  PackageModel(
      this.clientName,
      this.clientPhoneNumber,
      this.agentName,
      this.agentPhoneNumber,
      this.supplierName,
      this.supplierPhoneNumber,
      this.supplierType,
      this.action);
}

class PackageDataSource extends DataTableSource {
  BuildContext context;
  final List<PackageModel> package;

  PackageDataSource(this.package, this.context);

  @override
  DataRow? getRow(
    int index,
  ) {
    if (index >= package.length || index < 0) return null;
    final PackageModel task = package[index];
    return DataRow.byIndex(
      index: index,
      cells: [
        // DataCell(ListTile(title: Text(task.clientName),leading: CircleAvatar(backgroundImage: AssetImage('${imageUrl}agent.png'),),)),
        DataCell(Row(children: [CircleAvatar(backgroundImage: AssetImage('${imageUrl}agent.png')),SizedBox(width: 10,),Text(task.clientName), ],)),
        DataCell(Text(task.clientPhoneNumber)),
        DataCell(Row(children: [CircleAvatar(backgroundImage: AssetImage('${imageUrl}agent.png')),SizedBox(width: 10,),Text(task.agentName), ],)),
        DataCell(Text(task.agentPhoneNumber)),
        DataCell(ListTile(
          contentPadding: EdgeInsets.zero,
          title: Text(task.supplierName),
          subtitle: Text(task.supplierType,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w300,color: AppColor.hintColor),),
          leading: CircleAvatar(
            backgroundImage: AssetImage('${imageUrl}agent.png'),
          ),
        )),
        DataCell(Text(task.supplierPhoneNumber)),
        DataCell( Widgets().PackageDetailButton(context)),
      ],
    );
  }

  @override
  int get rowCount => package.length;

  @override
  bool get isRowCountApproximate => false;

  @override
  int get selectedRowCount => 0;
}
