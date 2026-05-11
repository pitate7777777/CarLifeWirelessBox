.class public final Lg/a/x0;
.super Lf/k/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/a/x0$a;
    }
.end annotation


# static fields
.field public static final e:Lg/a/x0$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/a/x0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg/a/x0$a;-><init>(Lf/m/b/b;)V

    sput-object v0, Lg/a/x0;->e:Lg/a/x0$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lg/a/x0;->e:Lg/a/x0$a;

    invoke-direct {p0, v0}, Lf/k/a;-><init>(Lf/k/f$b;)V

    return-void
.end method
