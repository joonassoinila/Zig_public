const std = @import("std");

pub fn main() !void {
    const myAge: i32 = 18;
    printAge(myAge);
}

pub fn printAge(age: i32) void {
    std.debug.print("Your age is {d}\n", .{age});
}
