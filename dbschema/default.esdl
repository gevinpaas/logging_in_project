module default {
    type User {
        required property email -> str {
            constraint exclusive;
        };
        required property password_hash -> str;
    };
};
