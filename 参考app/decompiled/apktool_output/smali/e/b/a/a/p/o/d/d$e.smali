.class public final Le/b/a/a/p/o/d/d$e;
.super Lf/m/b/d;
.source ""

# interfaces
.implements Lf/m/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/b/a/a/p/o/d/d;-><init>(Le/b/a/a/c;Le/b/a/a/p/o/d/d$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf/m/b/d;",
        "Lf/m/a/a<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Le/b/a/a/p/o/d/d;


# direct methods
.method public constructor <init>(Le/b/a/a/p/o/d/d;)V
    .locals 0

    iput-object p1, p0, Le/b/a/a/p/o/d/d$e;->e:Le/b/a/a/p/o/d/d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lf/m/b/d;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/b/a/a/p/o/d/d$e;->e:Le/b/a/a/p/o/d/d;

    .line 2
    iget-object v0, v0, Le/b/a/a/p/o/d/d;->e:Le/b/a/a/c;

    const-string v1, "CONFIG_TARGET_BLUETOOTH_NAME"

    .line 3
    invoke-interface {v0, v1}, Le/b/a/a/c;->w1(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
