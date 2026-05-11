.class public final Lg/a/o$a;
.super Lf/k/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/a/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf/k/b<",
        "Lf/k/e;",
        "Lg/a/o;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lf/m/b/b;)V
    .locals 1

    .line 1
    sget-object p1, Lf/k/e;->b:Lf/k/e$a;

    sget-object v0, Lg/a/n;->e:Lg/a/n;

    invoke-direct {p0, p1, v0}, Lf/k/b;-><init>(Lf/k/f$b;Lf/m/a/b;)V

    return-void
.end method
