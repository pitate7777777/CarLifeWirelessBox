.class public final Le/b/a/a/o/h/e/b$j0;
.super Lf/m/b/d;
.source ""

# interfaces
.implements Lf/m/a/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/b/a/a/o/h/e/b;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf/m/b/d;",
        "Lf/m/a/d<",
        "[B",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Lcom/baidu/carlife/protobuf/CarlifeVideoFrameRateProto$CarlifeVideoFrameRate;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Le/b/a/a/o/h/e/b$j0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/b/a/a/o/h/e/b$j0;

    invoke-direct {v0}, Le/b/a/a/o/h/e/b$j0;-><init>()V

    sput-object v0, Le/b/a/a/o/h/e/b$j0;->e:Le/b/a/a/o/h/e/b$j0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lf/m/b/d;-><init>(I)V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [B

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    const-string v0, "payload"

    .line 1
    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2, p3}, Le/c/b/h;->d([BII)Le/c/b/h;

    move-result-object p1

    invoke-static {p1}, Lcom/baidu/carlife/protobuf/CarlifeVideoFrameRateProto$CarlifeVideoFrameRate;->parseFrom(Le/c/b/h;)Lcom/baidu/carlife/protobuf/CarlifeVideoFrameRateProto$CarlifeVideoFrameRate;

    move-result-object p1

    return-object p1
.end method
