// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fsx-2018-03-01.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActiveDirectoryBackupAttributes _$ActiveDirectoryBackupAttributesFromJson(
    Map<String, dynamic> json) {
  return ActiveDirectoryBackupAttributes(
    activeDirectoryId: json['ActiveDirectoryId'] as String,
    domainName: json['DomainName'] as String,
  );
}

Backup _$BackupFromJson(Map<String, dynamic> json) {
  return Backup(
    backupId: json['BackupId'] as String,
    creationTime: unixFromJson(json['CreationTime']),
    fileSystem: json['FileSystem'] == null
        ? null
        : FileSystem.fromJson(json['FileSystem'] as Map<String, dynamic>),
    lifecycle:
        _$enumDecodeNullable(_$BackupLifecycleEnumMap, json['Lifecycle']),
    type: _$enumDecodeNullable(_$BackupTypeEnumMap, json['Type']),
    directoryInformation: json['DirectoryInformation'] == null
        ? null
        : ActiveDirectoryBackupAttributes.fromJson(
            json['DirectoryInformation'] as Map<String, dynamic>),
    failureDetails: json['FailureDetails'] == null
        ? null
        : BackupFailureDetails.fromJson(
            json['FailureDetails'] as Map<String, dynamic>),
    kmsKeyId: json['KmsKeyId'] as String,
    progressPercent: json['ProgressPercent'] as int,
    resourceARN: json['ResourceARN'] as String,
    tags: (json['Tags'] as List)
        ?.map((e) => e == null ? null : Tag.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$BackupLifecycleEnumMap = {
  BackupLifecycle.available: 'AVAILABLE',
  BackupLifecycle.creating: 'CREATING',
  BackupLifecycle.deleted: 'DELETED',
  BackupLifecycle.failed: 'FAILED',
};

const _$BackupTypeEnumMap = {
  BackupType.automatic: 'AUTOMATIC',
  BackupType.userInitiated: 'USER_INITIATED',
};

BackupFailureDetails _$BackupFailureDetailsFromJson(Map<String, dynamic> json) {
  return BackupFailureDetails(
    message: json['Message'] as String,
  );
}

CancelDataRepositoryTaskResponse _$CancelDataRepositoryTaskResponseFromJson(
    Map<String, dynamic> json) {
  return CancelDataRepositoryTaskResponse(
    lifecycle: _$enumDecodeNullable(
        _$DataRepositoryTaskLifecycleEnumMap, json['Lifecycle']),
    taskId: json['TaskId'] as String,
  );
}

const _$DataRepositoryTaskLifecycleEnumMap = {
  DataRepositoryTaskLifecycle.pending: 'PENDING',
  DataRepositoryTaskLifecycle.executing: 'EXECUTING',
  DataRepositoryTaskLifecycle.failed: 'FAILED',
  DataRepositoryTaskLifecycle.succeeded: 'SUCCEEDED',
  DataRepositoryTaskLifecycle.canceled: 'CANCELED',
  DataRepositoryTaskLifecycle.canceling: 'CANCELING',
};

CompletionReport _$CompletionReportFromJson(Map<String, dynamic> json) {
  return CompletionReport(
    enabled: json['Enabled'] as bool,
    format: _$enumDecodeNullable(_$ReportFormatEnumMap, json['Format']),
    path: json['Path'] as String,
    scope: _$enumDecodeNullable(_$ReportScopeEnumMap, json['Scope']),
  );
}

Map<String, dynamic> _$CompletionReportToJson(CompletionReport instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('Enabled', instance.enabled);
  writeNotNull('Format', _$ReportFormatEnumMap[instance.format]);
  writeNotNull('Path', instance.path);
  writeNotNull('Scope', _$ReportScopeEnumMap[instance.scope]);
  return val;
}

const _$ReportFormatEnumMap = {
  ReportFormat.reportCsv_20191124: 'REPORT_CSV_20191124',
};

const _$ReportScopeEnumMap = {
  ReportScope.failedFilesOnly: 'FAILED_FILES_ONLY',
};

CreateBackupResponse _$CreateBackupResponseFromJson(Map<String, dynamic> json) {
  return CreateBackupResponse(
    backup: json['Backup'] == null
        ? null
        : Backup.fromJson(json['Backup'] as Map<String, dynamic>),
  );
}

CreateDataRepositoryTaskResponse _$CreateDataRepositoryTaskResponseFromJson(
    Map<String, dynamic> json) {
  return CreateDataRepositoryTaskResponse(
    dataRepositoryTask: json['DataRepositoryTask'] == null
        ? null
        : DataRepositoryTask.fromJson(
            json['DataRepositoryTask'] as Map<String, dynamic>),
  );
}

CreateFileSystemFromBackupResponse _$CreateFileSystemFromBackupResponseFromJson(
    Map<String, dynamic> json) {
  return CreateFileSystemFromBackupResponse(
    fileSystem: json['FileSystem'] == null
        ? null
        : FileSystem.fromJson(json['FileSystem'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CreateFileSystemLustreConfigurationToJson(
    CreateFileSystemLustreConfiguration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'DeploymentType', _$LustreDeploymentTypeEnumMap[instance.deploymentType]);
  writeNotNull('ExportPath', instance.exportPath);
  writeNotNull('ImportPath', instance.importPath);
  writeNotNull('ImportedFileChunkSize', instance.importedFileChunkSize);
  writeNotNull('PerUnitStorageThroughput', instance.perUnitStorageThroughput);
  writeNotNull(
      'WeeklyMaintenanceStartTime', instance.weeklyMaintenanceStartTime);
  return val;
}

const _$LustreDeploymentTypeEnumMap = {
  LustreDeploymentType.scratch_1: 'SCRATCH_1',
  LustreDeploymentType.scratch_2: 'SCRATCH_2',
  LustreDeploymentType.persistent_1: 'PERSISTENT_1',
};

CreateFileSystemResponse _$CreateFileSystemResponseFromJson(
    Map<String, dynamic> json) {
  return CreateFileSystemResponse(
    fileSystem: json['FileSystem'] == null
        ? null
        : FileSystem.fromJson(json['FileSystem'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CreateFileSystemWindowsConfigurationToJson(
    CreateFileSystemWindowsConfiguration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('ThroughputCapacity', instance.throughputCapacity);
  writeNotNull('ActiveDirectoryId', instance.activeDirectoryId);
  writeNotNull(
      'AutomaticBackupRetentionDays', instance.automaticBackupRetentionDays);
  writeNotNull('CopyTagsToBackups', instance.copyTagsToBackups);
  writeNotNull(
      'DailyAutomaticBackupStartTime', instance.dailyAutomaticBackupStartTime);
  writeNotNull('DeploymentType',
      _$WindowsDeploymentTypeEnumMap[instance.deploymentType]);
  writeNotNull('PreferredSubnetId', instance.preferredSubnetId);
  writeNotNull('SelfManagedActiveDirectoryConfiguration',
      instance.selfManagedActiveDirectoryConfiguration?.toJson());
  writeNotNull(
      'WeeklyMaintenanceStartTime', instance.weeklyMaintenanceStartTime);
  return val;
}

const _$WindowsDeploymentTypeEnumMap = {
  WindowsDeploymentType.multiAz_1: 'MULTI_AZ_1',
  WindowsDeploymentType.singleAz_1: 'SINGLE_AZ_1',
  WindowsDeploymentType.singleAz_2: 'SINGLE_AZ_2',
};

DataRepositoryConfiguration _$DataRepositoryConfigurationFromJson(
    Map<String, dynamic> json) {
  return DataRepositoryConfiguration(
    exportPath: json['ExportPath'] as String,
    importPath: json['ImportPath'] as String,
    importedFileChunkSize: json['ImportedFileChunkSize'] as int,
  );
}

DataRepositoryTask _$DataRepositoryTaskFromJson(Map<String, dynamic> json) {
  return DataRepositoryTask(
    creationTime: unixFromJson(json['CreationTime']),
    fileSystemId: json['FileSystemId'] as String,
    lifecycle: _$enumDecodeNullable(
        _$DataRepositoryTaskLifecycleEnumMap, json['Lifecycle']),
    taskId: json['TaskId'] as String,
    type: _$enumDecodeNullable(_$DataRepositoryTaskTypeEnumMap, json['Type']),
    endTime: unixFromJson(json['EndTime']),
    failureDetails: json['FailureDetails'] == null
        ? null
        : DataRepositoryTaskFailureDetails.fromJson(
            json['FailureDetails'] as Map<String, dynamic>),
    paths: (json['Paths'] as List)?.map((e) => e as String)?.toList(),
    report: json['Report'] == null
        ? null
        : CompletionReport.fromJson(json['Report'] as Map<String, dynamic>),
    resourceARN: json['ResourceARN'] as String,
    startTime: unixFromJson(json['StartTime']),
    status: json['Status'] == null
        ? null
        : DataRepositoryTaskStatus.fromJson(
            json['Status'] as Map<String, dynamic>),
    tags: (json['Tags'] as List)
        ?.map((e) => e == null ? null : Tag.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

const _$DataRepositoryTaskTypeEnumMap = {
  DataRepositoryTaskType.exportToRepository: 'EXPORT_TO_REPOSITORY',
};

DataRepositoryTaskFailureDetails _$DataRepositoryTaskFailureDetailsFromJson(
    Map<String, dynamic> json) {
  return DataRepositoryTaskFailureDetails(
    message: json['Message'] as String,
  );
}

Map<String, dynamic> _$DataRepositoryTaskFilterToJson(
    DataRepositoryTaskFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('Name', _$DataRepositoryTaskFilterNameEnumMap[instance.name]);
  writeNotNull('Values', instance.values);
  return val;
}

const _$DataRepositoryTaskFilterNameEnumMap = {
  DataRepositoryTaskFilterName.fileSystemId: 'file-system-id',
  DataRepositoryTaskFilterName.taskLifecycle: 'task-lifecycle',
};

DataRepositoryTaskStatus _$DataRepositoryTaskStatusFromJson(
    Map<String, dynamic> json) {
  return DataRepositoryTaskStatus(
    failedCount: json['FailedCount'] as int,
    lastUpdatedTime: unixFromJson(json['LastUpdatedTime']),
    succeededCount: json['SucceededCount'] as int,
    totalCount: json['TotalCount'] as int,
  );
}

DeleteBackupResponse _$DeleteBackupResponseFromJson(Map<String, dynamic> json) {
  return DeleteBackupResponse(
    backupId: json['BackupId'] as String,
    lifecycle:
        _$enumDecodeNullable(_$BackupLifecycleEnumMap, json['Lifecycle']),
  );
}

DeleteFileSystemResponse _$DeleteFileSystemResponseFromJson(
    Map<String, dynamic> json) {
  return DeleteFileSystemResponse(
    fileSystemId: json['FileSystemId'] as String,
    lifecycle:
        _$enumDecodeNullable(_$FileSystemLifecycleEnumMap, json['Lifecycle']),
    windowsResponse: json['WindowsResponse'] == null
        ? null
        : DeleteFileSystemWindowsResponse.fromJson(
            json['WindowsResponse'] as Map<String, dynamic>),
  );
}

const _$FileSystemLifecycleEnumMap = {
  FileSystemLifecycle.available: 'AVAILABLE',
  FileSystemLifecycle.creating: 'CREATING',
  FileSystemLifecycle.failed: 'FAILED',
  FileSystemLifecycle.deleting: 'DELETING',
  FileSystemLifecycle.misconfigured: 'MISCONFIGURED',
  FileSystemLifecycle.updating: 'UPDATING',
};

Map<String, dynamic> _$DeleteFileSystemWindowsConfigurationToJson(
    DeleteFileSystemWindowsConfiguration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('FinalBackupTags',
      instance.finalBackupTags?.map((e) => e?.toJson())?.toList());
  writeNotNull('SkipFinalBackup', instance.skipFinalBackup);
  return val;
}

DeleteFileSystemWindowsResponse _$DeleteFileSystemWindowsResponseFromJson(
    Map<String, dynamic> json) {
  return DeleteFileSystemWindowsResponse(
    finalBackupId: json['FinalBackupId'] as String,
    finalBackupTags: (json['FinalBackupTags'] as List)
        ?.map((e) => e == null ? null : Tag.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

DescribeBackupsResponse _$DescribeBackupsResponseFromJson(
    Map<String, dynamic> json) {
  return DescribeBackupsResponse(
    backups: (json['Backups'] as List)
        ?.map((e) =>
            e == null ? null : Backup.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    nextToken: json['NextToken'] as String,
  );
}

DescribeDataRepositoryTasksResponse
    _$DescribeDataRepositoryTasksResponseFromJson(Map<String, dynamic> json) {
  return DescribeDataRepositoryTasksResponse(
    dataRepositoryTasks: (json['DataRepositoryTasks'] as List)
        ?.map((e) => e == null
            ? null
            : DataRepositoryTask.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    nextToken: json['NextToken'] as String,
  );
}

DescribeFileSystemsResponse _$DescribeFileSystemsResponseFromJson(
    Map<String, dynamic> json) {
  return DescribeFileSystemsResponse(
    fileSystems: (json['FileSystems'] as List)
        ?.map((e) =>
            e == null ? null : FileSystem.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    nextToken: json['NextToken'] as String,
  );
}

FileSystem _$FileSystemFromJson(Map<String, dynamic> json) {
  return FileSystem(
    creationTime: unixFromJson(json['CreationTime']),
    dNSName: json['DNSName'] as String,
    failureDetails: json['FailureDetails'] == null
        ? null
        : FileSystemFailureDetails.fromJson(
            json['FailureDetails'] as Map<String, dynamic>),
    fileSystemId: json['FileSystemId'] as String,
    fileSystemType:
        _$enumDecodeNullable(_$FileSystemTypeEnumMap, json['FileSystemType']),
    kmsKeyId: json['KmsKeyId'] as String,
    lifecycle:
        _$enumDecodeNullable(_$FileSystemLifecycleEnumMap, json['Lifecycle']),
    lustreConfiguration: json['LustreConfiguration'] == null
        ? null
        : LustreFileSystemConfiguration.fromJson(
            json['LustreConfiguration'] as Map<String, dynamic>),
    networkInterfaceIds: (json['NetworkInterfaceIds'] as List)
        ?.map((e) => e as String)
        ?.toList(),
    ownerId: json['OwnerId'] as String,
    resourceARN: json['ResourceARN'] as String,
    storageCapacity: json['StorageCapacity'] as int,
    storageType:
        _$enumDecodeNullable(_$StorageTypeEnumMap, json['StorageType']),
    subnetIds: (json['SubnetIds'] as List)?.map((e) => e as String)?.toList(),
    tags: (json['Tags'] as List)
        ?.map((e) => e == null ? null : Tag.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    vpcId: json['VpcId'] as String,
    windowsConfiguration: json['WindowsConfiguration'] == null
        ? null
        : WindowsFileSystemConfiguration.fromJson(
            json['WindowsConfiguration'] as Map<String, dynamic>),
  );
}

const _$FileSystemTypeEnumMap = {
  FileSystemType.windows: 'WINDOWS',
  FileSystemType.lustre: 'LUSTRE',
};

const _$StorageTypeEnumMap = {
  StorageType.ssd: 'SSD',
  StorageType.hdd: 'HDD',
};

FileSystemFailureDetails _$FileSystemFailureDetailsFromJson(
    Map<String, dynamic> json) {
  return FileSystemFailureDetails(
    message: json['Message'] as String,
  );
}

Map<String, dynamic> _$FilterToJson(Filter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('Name', _$FilterNameEnumMap[instance.name]);
  writeNotNull('Values', instance.values);
  return val;
}

const _$FilterNameEnumMap = {
  FilterName.fileSystemId: 'file-system-id',
  FilterName.backupType: 'backup-type',
};

ListTagsForResourceResponse _$ListTagsForResourceResponseFromJson(
    Map<String, dynamic> json) {
  return ListTagsForResourceResponse(
    nextToken: json['NextToken'] as String,
    tags: (json['Tags'] as List)
        ?.map((e) => e == null ? null : Tag.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

LustreFileSystemConfiguration _$LustreFileSystemConfigurationFromJson(
    Map<String, dynamic> json) {
  return LustreFileSystemConfiguration(
    dataRepositoryConfiguration: json['DataRepositoryConfiguration'] == null
        ? null
        : DataRepositoryConfiguration.fromJson(
            json['DataRepositoryConfiguration'] as Map<String, dynamic>),
    deploymentType: _$enumDecodeNullable(
        _$LustreDeploymentTypeEnumMap, json['DeploymentType']),
    mountName: json['MountName'] as String,
    perUnitStorageThroughput: json['PerUnitStorageThroughput'] as int,
    weeklyMaintenanceStartTime: json['WeeklyMaintenanceStartTime'] as String,
  );
}

SelfManagedActiveDirectoryAttributes
    _$SelfManagedActiveDirectoryAttributesFromJson(Map<String, dynamic> json) {
  return SelfManagedActiveDirectoryAttributes(
    dnsIps: (json['DnsIps'] as List)?.map((e) => e as String)?.toList(),
    domainName: json['DomainName'] as String,
    fileSystemAdministratorsGroup:
        json['FileSystemAdministratorsGroup'] as String,
    organizationalUnitDistinguishedName:
        json['OrganizationalUnitDistinguishedName'] as String,
    userName: json['UserName'] as String,
  );
}

Map<String, dynamic> _$SelfManagedActiveDirectoryConfigurationToJson(
    SelfManagedActiveDirectoryConfiguration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('DnsIps', instance.dnsIps);
  writeNotNull('DomainName', instance.domainName);
  writeNotNull('Password', instance.password);
  writeNotNull('UserName', instance.userName);
  writeNotNull(
      'FileSystemAdministratorsGroup', instance.fileSystemAdministratorsGroup);
  writeNotNull('OrganizationalUnitDistinguishedName',
      instance.organizationalUnitDistinguishedName);
  return val;
}

Map<String, dynamic> _$SelfManagedActiveDirectoryConfigurationUpdatesToJson(
    SelfManagedActiveDirectoryConfigurationUpdates instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('DnsIps', instance.dnsIps);
  writeNotNull('Password', instance.password);
  writeNotNull('UserName', instance.userName);
  return val;
}

Tag _$TagFromJson(Map<String, dynamic> json) {
  return Tag(
    key: json['Key'] as String,
    value: json['Value'] as String,
  );
}

Map<String, dynamic> _$TagToJson(Tag instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('Key', instance.key);
  writeNotNull('Value', instance.value);
  return val;
}

TagResourceResponse _$TagResourceResponseFromJson(Map<String, dynamic> json) {
  return TagResourceResponse();
}

UntagResourceResponse _$UntagResourceResponseFromJson(
    Map<String, dynamic> json) {
  return UntagResourceResponse();
}

Map<String, dynamic> _$UpdateFileSystemLustreConfigurationToJson(
    UpdateFileSystemLustreConfiguration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'WeeklyMaintenanceStartTime', instance.weeklyMaintenanceStartTime);
  return val;
}

UpdateFileSystemResponse _$UpdateFileSystemResponseFromJson(
    Map<String, dynamic> json) {
  return UpdateFileSystemResponse(
    fileSystem: json['FileSystem'] == null
        ? null
        : FileSystem.fromJson(json['FileSystem'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$UpdateFileSystemWindowsConfigurationToJson(
    UpdateFileSystemWindowsConfiguration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'AutomaticBackupRetentionDays', instance.automaticBackupRetentionDays);
  writeNotNull(
      'DailyAutomaticBackupStartTime', instance.dailyAutomaticBackupStartTime);
  writeNotNull('SelfManagedActiveDirectoryConfiguration',
      instance.selfManagedActiveDirectoryConfiguration?.toJson());
  writeNotNull(
      'WeeklyMaintenanceStartTime', instance.weeklyMaintenanceStartTime);
  return val;
}

WindowsFileSystemConfiguration _$WindowsFileSystemConfigurationFromJson(
    Map<String, dynamic> json) {
  return WindowsFileSystemConfiguration(
    activeDirectoryId: json['ActiveDirectoryId'] as String,
    automaticBackupRetentionDays: json['AutomaticBackupRetentionDays'] as int,
    copyTagsToBackups: json['CopyTagsToBackups'] as bool,
    dailyAutomaticBackupStartTime:
        json['DailyAutomaticBackupStartTime'] as String,
    deploymentType: _$enumDecodeNullable(
        _$WindowsDeploymentTypeEnumMap, json['DeploymentType']),
    maintenanceOperationsInProgress:
        (json['MaintenanceOperationsInProgress'] as List)
            ?.map((e) => e as String)
            ?.toList(),
    preferredFileServerIp: json['PreferredFileServerIp'] as String,
    preferredSubnetId: json['PreferredSubnetId'] as String,
    remoteAdministrationEndpoint:
        json['RemoteAdministrationEndpoint'] as String,
    selfManagedActiveDirectoryConfiguration:
        json['SelfManagedActiveDirectoryConfiguration'] == null
            ? null
            : SelfManagedActiveDirectoryAttributes.fromJson(
                json['SelfManagedActiveDirectoryConfiguration']
                    as Map<String, dynamic>),
    throughputCapacity: json['ThroughputCapacity'] as int,
    weeklyMaintenanceStartTime: json['WeeklyMaintenanceStartTime'] as String,
  );
}
