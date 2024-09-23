import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/widget/agent_text_field.dart';
import 'package:fab_tech_sol/widget/circleAvater.dart';
import 'package:fab_tech_sol/widget/delContainer.dart';



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
    if (index >= tasks.length || index < 0) return null;
    final SupplierTask task = tasks[index];
    return DataRow.byIndex(
      index: index,
      cells: [
        DataCell(AgentFormText().agentFormText(task.companyName, 12)),
        DataCell(AgentFormText().agentFormText(task.supplierName, 12)),
        DataCell(AgentFormText().agentFormText(task.supplierAddress, 12)),
        DataCell(AgentFormText().agentFormText(task.service, 12)),
        DataCell(AgentFormText().agentFormText(task.action, 12)),
        DataCell(AgentFormText().agentFormText(task.companyAddress, 12)),
        DataCell(Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(5),
              child: EditDelContainer().editDelContainer(() {}),
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
            CircularAvatar()
                .circularAvatar(backgroundImage: '${imageUrl}agent.png'),
            AgentFormText().agentFormText(task.name, 12),
          ],
        )),
        DataCell(AgentFormText().agentFormText(task.phoneNumber, 12)),
        DataCell(AgentFormText().agentFormText(task.email, 12)),
        DataCell(AgentFormText().agentFormText(task.location, 12)),
        DataCell(Padding(
          padding: const EdgeInsets.only(left: 200),
          child: AgentFormText().agentFormText(task.status, 12),
        )),
        DataCell(Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(5),
              child: EditDelContainer().editDelContainer(() {}),
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

class InternationalSupplierTasks {
  final String companyName;
  final String unknown1;
  final String phoneNumber;
  final String service;
  final String unknown2;
  final String location;
  final String status;
  final String action;

  InternationalSupplierTasks(this.companyName, this.unknown1, this.phoneNumber,
      this.service, this.unknown2, this.location, this.status, this.action);
}

class InternationalSupplierTaskDataSource extends DataTableSource {
  final List<InternationalSupplierTasks> internationalSupplierTasks;

  InternationalSupplierTaskDataSource(this.internationalSupplierTasks);

  @override
  DataRow? getRow(int index) {
    if (index >= internationalSupplierTasks.length || index < 0) return null;
    final InternationalSupplierTasks task = internationalSupplierTasks[index];
    return DataRow.byIndex(
      index: index,
      cells: [
        DataCell(AgentFormText().agentFormText(task.companyName, 12)),
        DataCell(AgentFormText().agentFormText(task.unknown1, 12)),
        DataCell(AgentFormText().agentFormText(task.phoneNumber, 12)),
        DataCell(AgentFormText().agentFormText(task.service, 12)),
        DataCell(AgentFormText().agentFormText(task.unknown2, 12)),
        DataCell(AgentFormText().agentFormText(task.location, 12)),
        DataCell(AgentFormText().agentFormText(task.status, 12)),
        DataCell(Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(5),
              child: EditDelContainer().editDelContainer(() {}),
            )
          ],
        )),
      ],
    );
  }

  @override
  int get rowCount => internationalSupplierTasks.length;

  @override
  bool get isRowCountApproximate => false;

  @override
  int get selectedRowCount => 0;
}