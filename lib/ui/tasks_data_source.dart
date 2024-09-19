import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/widgets/widgets.dart';
import 'package:flutter/material.dart';

class SupplierTask {
  final String companyName;
  final String supplierName;
  final String supplierAddress;
  final String service;
  final String companyAddress;
  final String status;
  final String action;

  SupplierTask(this.companyName, this.supplierName, this.supplierAddress,
      this.service, this.companyAddress, this.status, this.action);
}

class TaskDataSource extends DataTableSource {
  final List<SupplierTask> tasks;

  TaskDataSource(this.tasks);

  @override
  DataRow? getRow(int index) {
    // if (index >= tasks.length || index < 0) return null;
    assert(index >= 0);

    final  task = tasks[index];
    return DataRow.byIndex(
      index: index,
      cells: [
        DataCell(Text(task.companyName)),
        DataCell(Text(task.supplierName)),
        DataCell(Text(task.supplierAddress)),
        DataCell(Text(task.service)),
        DataCell(Text(task.action)),
        DataCell(Text(task.companyAddress)),

        DataCell(Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(5),
              child: Widgets().editDelContainer(() {}),
            )
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

  AgentsTaskDataSource(this.agentsTasks);

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
              child: Widgets().editDelContainer(() {}),
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
