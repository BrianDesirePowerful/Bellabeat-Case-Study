-- Cyclistic / Bellabeat SQL Analysis Queries

-- Average Daily Steps
SELECT
  AVG(TotalSteps) AS avg_daily_steps
FROM
  `bellabeat.dailyActivity`;

-- Average Daily Calories
SELECT
  AVG(Calories) AS avg_daily_calories
FROM
  `bellabeat.dailyActivity`;

-- Activity Segmentation
SELECT
  CASE
    WHEN TotalSteps < 5000 THEN 'Low Activity'
    WHEN TotalSteps BETWEEN 5000 AND 9999 THEN 'Moderate Activity'
    ELSE 'High Activity'
  END AS Activity_Level,
  COUNT(*) AS Users
FROM
  `bellabeat.dailyActivity`
GROUP BY
  Activity_Level
ORDER BY
  Users DESC;

-- Average Sleep Duration
SELECT
  AVG(TotalMinutesAsleep) AS avg_sleep_minutes
FROM
  `bellabeat.sleepDay`;

-- Average Calories Burned by Activity Level
SELECT
  CASE
    WHEN TotalSteps < 5000 THEN 'Low Activity'
    WHEN TotalSteps BETWEEN 5000 AND 9999 THEN 'Moderate Activity'
    ELSE 'High Activity'
  END AS Activity_Level,
  AVG(Calories) AS Avg_Calories
FROM
  `bellabeat.dailyActivity`
GROUP BY
  Activity_Level
ORDER BY
  Avg_Calories DESC;
