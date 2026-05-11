.class public final Le/b/a/a/p/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Le/b/a/a/p/c;


# direct methods
.method public static final a()Le/b/a/a/p/c;
    .locals 2

    sget-object v0, Le/b/a/a/p/b;->a:Le/b/a/a/p/c;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "CarLife not init or init failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
