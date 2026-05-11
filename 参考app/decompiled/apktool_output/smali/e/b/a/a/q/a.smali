.class public final Le/b/a/a/q/a;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final a()Le/b/a/a/q/b;
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "CarLife not init or init failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
