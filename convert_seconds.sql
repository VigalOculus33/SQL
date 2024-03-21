DELIMITER //

CREATE FUNCTION ConvertSeconds(seconds INT)
RETURNS VARCHAR(100)
BEGIN
    DECLARE days INT;
    DECLARE hours INT;
    DECLARE minutes INT;
    DECLARE remainingSeconds INT;
    SET days = seconds DIV (24 * 3600);
    SET hours = (seconds MOD (24 * 3600)) DIV 3600;
    SET minutes = (seconds MOD 3600) DIV 60;
    SET remainingSeconds = seconds MOD 60;
    RETURN CONCAT(days, ' days ', hours, ' hours ', minutes, ' minutes ', remainingSeconds, ' seconds');
END //

DELIMITER ;