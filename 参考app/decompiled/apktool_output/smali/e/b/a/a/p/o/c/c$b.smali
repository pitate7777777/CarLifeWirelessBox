.class public final Le/b/a/a/p/o/c/c$b;
.super Lf/m/b/d;
.source ""

# interfaces
.implements Lf/m/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/b/a/a/p/o/c/c;-><init>(Le/b/a/a/c;Lf/m/a/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf/m/b/d;",
        "Lf/m/a/a<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Le/b/a/a/p/o/c/c;


# direct methods
.method public constructor <init>(Le/b/a/a/p/o/c/c;)V
    .locals 0

    iput-object p1, p0, Le/b/a/a/p/o/c/c$b;->e:Le/b/a/a/p/o/c/c;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lf/m/b/d;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Le/b/a/a/p/o/c/c$b;->e:Le/b/a/a/p/o/c/c;

    .line 2
    iget-object v0, v0, Le/b/a/a/p/o/c/c;->e:Le/b/a/a/c;

    .line 3
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "CONFIG_USE_ASYNC_USB_MODE"

    invoke-interface {v0, v2, v1}, Le/b/a/a/c;->z0(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
