const std = @import("std");

pub fn main() !void {
    const a: i32 = 10;
    const b: i32 = 20;

    var stdout = std.io.getStdOut().writer();

    stdout.print("a==b : {}\n", .{a == b}) catch {};
    stdout.print("a!=b : {}\n", .{a != b}) catch {};
    stdout.print("a>b : {}\n", .{a > b}) catch {};
    stdout.print("a<b : {}\n", .{a < b}) catch {};
    stdout.print("a>=b : {}\n", .{a >= b}) catch {};
    stdout.print("a<=b : {}\n", .{a <= b}) catch {};

    stdout.print("{}\n", .{true and false}) catch {};
    stdout.print("{}\n", .{true or false}) catch {};
    stdout.print("{}\n", .{!true}) catch {};
    stdout.print("{}\n", .{!false}) catch {};
}
