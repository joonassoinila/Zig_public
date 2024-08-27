const std = @import("std");

pub const PetType = enum { dog, cat, fish };
pub const Pet = struct {
    name: []const u8,
    type: PetType,
    age: u32,
    pub fn getAge(self: Pet) !u32 {
        return self.age;
    }
    pub fn printInfo(self: Pet) !void {
        std.debug.print("Name: {s}, kind of pet {}\n", .{ self.name, self.type });
    }
};
