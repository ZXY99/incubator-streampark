SET FOREIGN_KEY_CHECKS = 0;

ALTER TABLE `t_flink_app` ADD COLUMN `K8S_HADOOP_INTEGRATION` tinyint(1) default 0 AFTER `K8S_TM_POD_TEMPLATE`;

ALTER TABLE `t_flink_app` ADD COLUMN `RESOURCE_FROM` tinyint(1) NULL AFTER `EXECUTION_MODE`;

ALTER TABLE `t_flink_app` ADD COLUMN `JAR_CHECK_SUM` bigint NULL AFTER `JAR`;

update `t_flink_app` set `RESOURCE_FROM` = 1 where `JOB_TYPE` = 1;

SET FOREIGN_KEY_CHECKS = 1;