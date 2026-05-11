.class public final Lg/a/a0;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lg/a/z0/o;

.field public static final b:Lg/a/z0/o;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/a/z0/o;

    const-string v1, "REMOVED_TASK"

    invoke-direct {v0, v1}, Lg/a/z0/o;-><init>(Ljava/lang/String;)V

    sput-object v0, Lg/a/a0;->a:Lg/a/z0/o;

    new-instance v0, Lg/a/z0/o;

    const-string v1, "CLOSED_EMPTY"

    invoke-direct {v0, v1}, Lg/a/z0/o;-><init>(Ljava/lang/String;)V

    sput-object v0, Lg/a/a0;->b:Lg/a/z0/o;

    return-void
.end method
