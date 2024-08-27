const std = @import("std");
const Person = struct { age: i32, height: i32, name: []const u8 };

pub fn main() !void {
    const person = Person{ .age = 13, .height = 150, .name = "Joonas" };
    std.debug.print("Persons age is: {d}\n", .{person.age});
}
