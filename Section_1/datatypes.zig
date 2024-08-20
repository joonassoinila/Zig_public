const std = @import("std");

pub fn main() !void {
    var mySignedInt: i32 = 42;
    const myUnSignedInt: u64 = 1234567891324;

    std.debug.print("MySignedInt: {}\n", .{mySignedInt});
    std.debug.print("MyUnSignedInt: {}\n", .{myUnSignedInt});

    mySignedInt = mySignedInt + 100;

    std.debug.print("MySignedInt: {}\n", .{mySignedInt});

    const myTuple = .{ 42, "TestValue", 4.14 };
    std.debug.print("Length of tuple {d}\n", .{myTuple.len});
    const intValue: i32 = myTuple[0];
    const stringValue: []const u8 = myTuple[1];
    std.debug.print("Int:{d}, String:{s}, Float:{d:.3}\n", .{ intValue, stringValue, myTuple[2] });
}
