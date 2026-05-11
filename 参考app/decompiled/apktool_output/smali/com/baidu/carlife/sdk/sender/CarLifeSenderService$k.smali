.class public final Lcom/baidu/carlife/sdk/sender/CarLifeSenderService$k;
.super Lf/m/b/d;
.source ""

# interfaces
.implements Lf/m/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/carlife/sdk/sender/CarLifeSenderService;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf/m/b/d;",
        "Lf/m/a/b<",
        "Le/b/a/a/q/h;",
        "Lf/h;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/baidu/carlife/sdk/sender/CarLifeSenderService;


# direct methods
.method public constructor <init>(Lcom/baidu/carlife/sdk/sender/CarLifeSenderService;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService$k;->e:Lcom/baidu/carlife/sdk/sender/CarLifeSenderService;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lf/m/b/d;-><init>(I)V

    return-void
.end method


# virtual methods
.method public g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Le/b/a/a/q/h;

    const-string v0, "it"

    .line 1
    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService$k;->e:Lcom/baidu/carlife/sdk/sender/CarLifeSenderService;

    .line 2
    iget-object v0, v0, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService;->f:Le/b/a/a/q/b;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Le/b/a/a/q/b;->t1(Le/b/a/a/q/h;)V

    .line 4
    sget-object p1, Lf/h;->a:Lf/h;

    return-object p1

    :cond_0
    const-string p1, "sender"

    .line 5
    invoke-static {p1}, Lf/m/b/c;->k(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
