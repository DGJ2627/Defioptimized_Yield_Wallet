import 'dart:io';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class UserTicketModel extends Equatable {
  final String userTicketName;
  final String userTicketMessage;
  final List<File> userTicketFiles;
  final String currentTime;
  final String ticketStatus;
  final Color ticketStatusColor;

  const UserTicketModel({
    required this.userTicketName,
    required this.userTicketMessage,
    required this.userTicketFiles,
    required this.currentTime,
    required this.ticketStatus,
    required this.ticketStatusColor,
  });

  UserTicketModel copyWith(
      {String? userTicketName,
      String? userTicketMessage,
      List<File>? userTicketFiles,
      String? currentTime,
      String? ticketStatus,
      Color? ticketStatusColor}) {
    return UserTicketModel(
      userTicketName: userTicketName ?? this.userTicketName,
      userTicketMessage: userTicketMessage ?? this.userTicketMessage,
      userTicketFiles: userTicketFiles ?? this.userTicketFiles,
      currentTime: currentTime ?? this.currentTime,
      ticketStatus: ticketStatus ?? this.ticketStatus,
      ticketStatusColor: ticketStatusColor ?? this.ticketStatusColor,
    );
  }

  @override
  List<Object?> get props => [
        userTicketName,
        userTicketMessage,
        userTicketFiles,
        currentTime,
        ticketStatus,
        ticketStatusColor,
      ];
}
