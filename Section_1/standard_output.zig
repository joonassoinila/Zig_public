const std = @import("std");

pub fn main() !void {
    const message = "Henlo";
    const mPointr = &message;
    var stdout = std.io.getStdOut().writer();

    try stdout.print("Message: {s} {s}\n", .{ message, mPointr });

    const negativeNumber = -123;
    const hexNumber = 0x1A3F;
    const binaryNumber = 155;
    const truthValue = true;
    const piValue = 3.14159;
    const aphrabetChar = 'A';
    const greetingMessage = "Hello, Zig";

    std.debug.print("Int (decimal) {d}\n", .{negativeNumber});
    std.debug.print("Int (hexadecimal) {x}\n", .{hexNumber});
    std.debug.print("Int (binary) {b}\n", .{binaryNumber});
    std.debug.print("Boolean {}\n", .{truthValue});
    std.debug.print("Float {d}\n", .{piValue});
    std.debug.print("Character {c}\n", .{aphrabetChar});
    std.debug.print("String {s}\n", .{greetingMessage});
}
