const std = @import("std");

pub fn main() !void {
    const num1 = 100;
    const num2: f32 = 200;

    var sum: i32 = num1 + num2;
    const product: i32 = num1 * num2;
    const difference: i32 = num1 - num2;
    const quotient: f32 = num1 / num2;

    std.debug.print("sum:{d} product: {d} difference: {d} quotient: {d:.2}\n", .{ sum, product, difference, quotient });

    sum += 10;
    std.debug.print("NewSum {d}\n", .{sum});

    std.debug.print("jakojaannos {d}\n", .{@mod(11, 2)});
}
