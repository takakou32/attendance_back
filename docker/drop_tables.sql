-- 外部キー制約チェックを無効にする（オプション）
SET FOREIGN_KEY_CHECKS = 0;

-- 11. 勤怠ポリシーテーブル (attendance_policies)
DROP TABLE IF EXISTS attendance_policies;

-- 10. 残業申請テーブル (overtime_requests)
DROP TABLE IF EXISTS overtime_requests;

-- 9. 休暇申請テーブル (leave_requests)
DROP TABLE IF EXISTS leave_requests;

-- 8. 従業員休暇残高テーブル (employee_leave_balances)
DROP TABLE IF EXISTS employee_leave_balances;

-- 7. 会社休日テーブル (company_holidays)
DROP TABLE IF EXISTS company_holidays;

-- 6. 勤怠異常記録テーブル (attendance_irregularities)
DROP TABLE IF EXISTS attendance_irregularities;

-- 5. 月次勤務記録テーブル (monthly_work_records)
DROP TABLE IF EXISTS monthly_work_records;

-- 4. 日次勤務記録テーブル (daily_work_records)
DROP TABLE IF EXISTS daily_work_records;

-- 3. 従業員テーブル (employees)
DROP TABLE IF EXISTS employees;

-- 2. 勤務地テーブル (work_locations)
DROP TABLE IF EXISTS work_locations;

-- 1. 部署テーブル (departments)
DROP TABLE IF EXISTS departments;

-- 外部キー制約チェックを有効に戻す（オプション）
SET FOREIGN_KEY_CHECKS = 1;