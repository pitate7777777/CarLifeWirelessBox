.class public final Lg/a/u;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lg/a/u;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lg/a/m;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Lg/a/a1/b;->k:Lg/a/a1/b;

    goto :goto_0

    :cond_0
    sget-object v0, Lg/a/h;->f:Lg/a/h;

    .line 2
    :goto_0
    sget-object v0, Lg/a/u0;->f:Lg/a/u0;

    sget-object v0, Lg/a/a1/b;->k:Lg/a/a1/b;

    if-eqz v0, :cond_1

    .line 3
    sget-object v0, Lg/a/a1/b;->l:Lg/a/o;

    return-void

    :cond_1
    const/4 v0, 0x0

    throw v0
.end method
