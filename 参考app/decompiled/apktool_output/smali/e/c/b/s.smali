.class public Le/c/b/s;
.super Ljava/io/IOException;
.source ""


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static a()Le/c/b/s;
    .locals 2

    new-instance v0, Le/c/b/s;

    const-string v1, "Protocol message tag had invalid wire type."

    invoke-direct {v0, v1}, Le/c/b/s;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static b()Le/c/b/s;
    .locals 2

    new-instance v0, Le/c/b/s;

    const-string v1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {v0, v1}, Le/c/b/s;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static c()Le/c/b/s;
    .locals 2

    new-instance v0, Le/c/b/s;

    const-string v1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {v0, v1}, Le/c/b/s;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
