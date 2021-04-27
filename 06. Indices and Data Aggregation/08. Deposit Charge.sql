SELECT DepositGroup,
		w.MagicWandCreator,
		MIN(w.DepositCharge) AS [MinDepositCharge]
FROM WizzardDeposits w
GROUP BY w.DepositGroup, w.MagicWandCreator
ORDER BY w.DepositGroup, w.MagicWandCreator