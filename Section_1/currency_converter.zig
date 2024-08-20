const std = @import("std");

pub fn main() void {
    const usd_to_eur: f16 = 0.93;
    const usd_to_gbp: f16 = 0.82;
    const usd_to_jpy: f16 = 134.25;
    const conversion_array = [_]f16{ usd_to_eur, usd_to_gbp, usd_to_jpy };

    for (conversion_array) |x| {
        const converted_currency = convertCurrency(x, 100);
        std.debug.print("Converted usd with conversion-rate {d:.2} to {d:.2}\n", .{ x, converted_currency });
    }
}
fn convertCurrency(conversion_rate: f16, currency_amount: i16) f16 {
    const currency_as_int: f16 = @floatFromInt(currency_amount);
    const converted_currency = conversion_rate * currency_as_int;
    return converted_currency;
}
