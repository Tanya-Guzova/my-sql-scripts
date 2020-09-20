-- Run this first to uncheck safe updates without disconnecting and connecting back
SET SQL_SAFE_UPDATES = 0;

UPDATE Student SET
GPA = GPA + 0.1
where SAT between 1000 and 1300;
