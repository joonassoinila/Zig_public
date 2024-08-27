const std = @import("std");

pub const Birthday = struct {
    name: []const u8,
    age: u32,
    pub fn celebrate(self: *const Birthday) void {
        std.debug.print("Happy birthday {s}!\n", .{self.name});
        var counter: i8 = 0;
        while (counter <= self.age) {
            std.debug.print("Blowing out candle {d}\n", .{counter});
            counter += 1;
        }
    }
};
