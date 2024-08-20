const std = @import("std");

pub fn main() void {
    std.debug.print("Hello word! {s} {s}\n", .{ "Hello", "Hello2" });
}
