import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

public class DateUtils {
    public static String format(Date date, String format) {
        SimpleDateFormat formater = new SimpleDateFormat(format, Locale.FRENCH);
        return formater.format(date);
    }

    public static Date getDate(String date, String format) {
        SimpleDateFormat formater = new SimpleDateFormat(format, Locale.FRENCH);
        try {
            return formater.parse(date);
        } catch (ParseException e) {
            return null;
        }
    }
}
