.class public Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/c/b/r$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/c/b/r$d<",
        "Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findValueByNumber(I)Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;
    .locals 0

    invoke-static {p1}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;->forNumber(I)Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic findValueByNumber(I)Le/c/b/r$c;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType$1;->findValueByNumber(I)Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;

    move-result-object p1

    return-object p1
.end method
