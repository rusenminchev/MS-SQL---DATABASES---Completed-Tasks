SELECT ABS(SUM(Host.DepositAmount - Guest.DepositAmount)) AS [Difference]
FROM WizzardDeposits Host
JOIN WizzardDeposits Guest ON Guest.Id + 1 = Host.Id