.class public final Lcom/baidu/carlife/protobuf/CarlifeCarHardKeyCodeProto$CarlifeCarHardKeyCode$Builder;
.super Le/c/b/p$b;
.source ""

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeCarHardKeyCodeProto$CarlifeCarHardKeyCodeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeCarHardKeyCodeProto$CarlifeCarHardKeyCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/b/p$b<",
        "Lcom/baidu/carlife/protobuf/CarlifeCarHardKeyCodeProto$CarlifeCarHardKeyCode;",
        "Lcom/baidu/carlife/protobuf/CarlifeCarHardKeyCodeProto$CarlifeCarHardKeyCode$Builder;",
        ">;",
        "Lcom/baidu/carlife/protobuf/CarlifeCarHardKeyCodeProto$CarlifeCarHardKeyCodeOrBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeCarHardKeyCodeProto$CarlifeCarHardKeyCode;->access$000()Lcom/baidu/carlife/protobuf/CarlifeCarHardKeyCodeProto$CarlifeCarHardKeyCode;

    move-result-object v0

    invoke-direct {p0, v0}, Le/c/b/p$b;-><init>(Le/c/b/p;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/baidu/carlife/protobuf/CarlifeCarHardKeyCodeProto$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarHardKeyCodeProto$CarlifeCarHardKeyCode$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearKeycode()Lcom/baidu/carlife/protobuf/CarlifeCarHardKeyCodeProto$CarlifeCarHardKeyCode$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeCarHardKeyCodeProto$CarlifeCarHardKeyCode;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeCarHardKeyCodeProto$CarlifeCarHardKeyCode;->access$200(Lcom/baidu/carlife/protobuf/CarlifeCarHardKeyCodeProto$CarlifeCarHardKeyCode;)V

    return-object p0
.end method

.method public getKeycode()I
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeCarHardKeyCodeProto$CarlifeCarHardKeyCode;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeCarHardKeyCodeProto$CarlifeCarHardKeyCode;->getKeycode()I

    move-result v0

    return v0
.end method

.method public hasKeycode()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeCarHardKeyCodeProto$CarlifeCarHardKeyCode;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeCarHardKeyCodeProto$CarlifeCarHardKeyCode;->hasKeycode()Z

    move-result v0

    return v0
.end method

.method public setKeycode(I)Lcom/baidu/carlife/protobuf/CarlifeCarHardKeyCodeProto$CarlifeCarHardKeyCode$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeCarHardKeyCodeProto$CarlifeCarHardKeyCode;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCarHardKeyCodeProto$CarlifeCarHardKeyCode;->access$100(Lcom/baidu/carlife/protobuf/CarlifeCarHardKeyCodeProto$CarlifeCarHardKeyCode;I)V

    return-object p0
.end method
