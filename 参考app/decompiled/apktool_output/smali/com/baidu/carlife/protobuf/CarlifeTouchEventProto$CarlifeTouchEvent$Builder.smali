.class public final Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent$Builder;
.super Le/c/b/p$b;
.source ""

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEventOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/b/p$b<",
        "Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;",
        "Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent$Builder;",
        ">;",
        "Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEventOrBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;->access$000()Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Le/c/b/p$b;-><init>(Le/c/b/p;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCode()Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;->access$400(Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;)V

    return-object p0
.end method

.method public clearType()Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;->access$200(Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;)V

    return-object p0
.end method

.method public clearValue()Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;->access$600(Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;)V

    return-object p0
.end method

.method public getCode()I
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;->getCode()I

    move-result v0

    return v0
.end method

.method public getType()I
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;->getType()I

    move-result v0

    return v0
.end method

.method public getValue()I
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;->getValue()I

    move-result v0

    return v0
.end method

.method public hasCode()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;->hasCode()Z

    move-result v0

    return v0
.end method

.method public hasType()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;->hasType()Z

    move-result v0

    return v0
.end method

.method public hasValue()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;->hasValue()Z

    move-result v0

    return v0
.end method

.method public setCode(I)Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;->access$300(Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;I)V

    return-object p0
.end method

.method public setType(I)Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;->access$100(Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;I)V

    return-object p0
.end method

.method public setValue(I)Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;->access$500(Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;I)V

    return-object p0
.end method
