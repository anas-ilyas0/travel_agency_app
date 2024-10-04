import 'package:fab_tech_sol/AppColor/app_color.dart';
import 'package:fab_tech_sol/Dialog/agent_dialog.dart';
import 'package:fab_tech_sol/Dialog/international_edit_dialog.dart';
import 'package:fab_tech_sol/Dialog/localsupplier_dialog.dart';
import 'package:fab_tech_sol/Screen/local_supplier_detail.dart';
import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/widget/widgets.dart';
import 'package:flutter/material.dart';


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
                        builder: (context) => const LocalSupplierDetail(),
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
                      builder: (context) => const LocalsupplierDialog(),
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
            Row(children: [CircleAvatar(backgroundImage: AssetImage('${imageUrl}agent.png')),const SizedBox(width: 10,),Text(task.name), ],)
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
                    builder: (context) => const AgentDialog(),
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
                    builder: (context) => const InternationalEditDialog(),
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
        DataCell(Row(children: [CircleAvatar(backgroundImage: AssetImage('${imageUrl}agent.png')),const SizedBox(width: 10,),Text(task.clientName), ],)),
        DataCell(Text(task.clientPhoneNumber)),
        DataCell(Row(children: [CircleAvatar(backgroundImage: AssetImage('${imageUrl}agent.png')),const SizedBox(width: 10,),Text(task.agentName), ],)),
        DataCell(Text(task.agentPhoneNumber)),
        DataCell(ListTile(
          contentPadding: EdgeInsets.zero,
          title: Text(task.supplierName,style: const TextStyle(fontSize: 14),),
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
// Customer table
class CustomerModel {
  final String lead;
  final String firstName;
  final String lasName;
  final String phoneNumber;
  final String email;
  final String location;
  final String status;
  final String action;

  CustomerModel(
      this.lead,
      this.firstName,
      this.lasName,
      this.phoneNumber,
      this.email,
      this.location,
      this.status,
      this.action);
}

class CustomerDataSource extends DataTableSource {
  BuildContext context;
  final List<CustomerModel> customer;

  CustomerDataSource(this.customer, this.context);

  @override
  DataRow? getRow(
      int index,
      ) {
    if (index >= customer.length || index < 0) return null;
    final CustomerModel task = customer[index];
    return DataRow.byIndex(
      index: index,
      cells: [
        DataCell( Text(task.lead)),
        DataCell(Row(children: [Padding(
          padding: const EdgeInsets.all(2.0),
          child: CircleAvatar(backgroundImage: AssetImage('${imageUrl}girl.png')),
        ),const SizedBox(width: 10,),Text(task.firstName), ],)),
        DataCell(Text(task.lasName)),
        DataCell(Text(task.phoneNumber)),
        DataCell(Text(task.email)),
        DataCell(Text(task.location)),
        DataCell(Text(task.status)),
        DataCell(Center(
          child: Container(height: 45,width: 45,
              decoration: BoxDecoration(
                color: editDelContainerColor,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(width: .5,color: AppColor.buttonTextColors),
              boxShadow: [ BoxShadow(
                color: AppColor.shadowColor.withOpacity(.05),
                blurRadius: 18,
                spreadRadius: 0
              )]),
              child: IconButton( onPressed: (){},icon: Icon(Icons.remove_red_eye,color: AppColor.buttonTextColor,),)),
        ))
    
      ],
    );
  }

  @override
  int get rowCount => customer.length;

  @override
  bool get isRowCountApproximate => false;

  @override
  int get selectedRowCount => 0;
}
