.class public final Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar$Builder;
.super Le/c/b/p$b;
.source ""

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBarOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/b/p$b<",
        "Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;",
        "Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar$Builder;",
        ">;",
        "Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBarOrBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->access$000()Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;

    move-result-object v0

    invoke-direct {p0, v0}, Le/c/b/p$b;-><init>(Le/c/b/p;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearProgressBar()Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->access$200(Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;)V

    return-object p0
.end method

.method public getProgressBar()I
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->getProgressBar()I

    move-result v0

    return v0
.end method

.method public hasProgressBar()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->hasProgressBar()Z

    move-result v0

    return v0
.end method

.method public setProgressBar(I)Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->access$100(Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;I)V

    return-object p0
.end method
