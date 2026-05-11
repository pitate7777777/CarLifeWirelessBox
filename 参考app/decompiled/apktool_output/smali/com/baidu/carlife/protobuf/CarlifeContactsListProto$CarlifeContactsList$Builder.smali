.class public final Lcom/baidu/carlife/protobuf/CarlifeContactsListProto$CarlifeContactsList$Builder;
.super Le/c/b/p$b;
.source ""

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeContactsListProto$CarlifeContactsListOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeContactsListProto$CarlifeContactsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/b/p$b<",
        "Lcom/baidu/carlife/protobuf/CarlifeContactsListProto$CarlifeContactsList;",
        "Lcom/baidu/carlife/protobuf/CarlifeContactsListProto$CarlifeContactsList$Builder;",
        ">;",
        "Lcom/baidu/carlife/protobuf/CarlifeContactsListProto$CarlifeContactsListOrBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeContactsListProto$CarlifeContactsList;->access$000()Lcom/baidu/carlife/protobuf/CarlifeContactsListProto$CarlifeContactsList;

    move-result-object v0

    invoke-direct {p0, v0}, Le/c/b/p$b;-><init>(Le/c/b/p;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/baidu/carlife/protobuf/CarlifeContactsListProto$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeContactsListProto$CarlifeContactsList$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllCarlifeContacts(Ljava/lang/Iterable;)Lcom/baidu/carlife/protobuf/CarlifeContactsListProto$CarlifeContactsList$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;",
            ">;)",
            "Lcom/baidu/carlife/protobuf/CarlifeContactsListProto$CarlifeContactsList$Builder;"
        }
    .end annotation

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeContactsListProto$CarlifeContactsList;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeContactsListProto$CarlifeContactsList;->access$900(Lcom/baidu/carlife/protobuf/CarlifeContactsListProto$CarlifeContactsList;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addCarlifeContacts(ILcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts$Builder;)Lcom/baidu/carlife/protobuf/CarlifeContactsListProto$CarlifeContactsList$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeContactsListProto$CarlifeContactsList;

    invoke-static {v0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeContactsListProto$CarlifeContactsList;->access$800(Lcom/baidu/carlife/protobuf/CarlifeContactsListProto$CarlifeContactsList;ILcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts$Builder;)V

    return-object p0
.end method

.method public addCarlifeContacts(ILcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;)Lcom/baidu/carlife/protobuf/CarlifeContactsListProto$CarlifeContactsList$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeContactsListProto$CarlifeContactsList;

    invoke-static {v0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeContactsListProto$CarlifeContactsList;->access$600(Lcom/baidu/carlife/protobuf/CarlifeContactsListProto$CarlifeContactsList;ILcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;)V

    return-object p0
.end method

.method public addCarlifeContacts(Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts$Builder;)Lcom/baidu/carlife/protobuf/CarlifeContactsListProto$CarlifeContactsList$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeContactsListProto$CarlifeContactsList;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeContactsListProto$CarlifeContactsList;->access$700(Lcom/baidu/carlife/protobuf/CarlifeContactsListProto$CarlifeContactsList;Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts$Builder;)V

    return-object p0
.end method

.method public addCarlifeContacts(Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;)Lcom/baidu/carlife/protobuf/CarlifeContactsListProto$CarlifeContactsList$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeContactsListProto$CarlifeContactsList;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeContactsListProto$CarlifeContactsList;->access$500(Lcom/baidu/carlife/protobuf/CarlifeContactsListProto$CarlifeContactsList;Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;)V

    return-object p0
.end method

.method public clearCarlifeContacts()Lcom/baidu/carlife/protobuf/CarlifeContactsListProto$CarlifeContactsList$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeContactsListProto$CarlifeContactsList;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeContactsListProto$CarlifeContactsList;->access$1000(Lcom/baidu/carlife/protobuf/CarlifeContactsListProto$CarlifeContactsList;)V

    return-object p0
.end method

.method public clearCnt()Lcom/baidu/carlife/protobuf/CarlifeContactsListProto$CarlifeContactsList$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeContactsListProto$CarlifeContactsList;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeContactsListProto$CarlifeContactsList;->access$200(Lcom/baidu/carlife/protobuf/CarlifeContactsListProto$CarlifeContactsList;)V

    return-object p0
.end method

.method public getCarlifeContacts(I)Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeContactsListProto$CarlifeContactsList;

    invoke-virtual {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeContactsListProto$CarlifeContactsList;->getCarlifeContacts(I)Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;

    move-result-object p1

    return-object p1
.end method

.method public getCarlifeContactsCount()I
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeContactsListProto$CarlifeContactsList;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeContactsListProto$CarlifeContactsList;->getCarlifeContactsCount()I

    move-result v0

    return v0
.end method

.method public getCarlifeContactsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeContactsListProto$CarlifeContactsList;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeContactsListProto$CarlifeContactsList;->getCarlifeContactsList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCnt()I
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeContactsListProto$CarlifeContactsList;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeContactsListProto$CarlifeContactsList;->getCnt()I

    move-result v0

    return v0
.end method

.method public hasCnt()Z
    .locals 1

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeContactsListProto$CarlifeContactsList;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeContactsListProto$CarlifeContactsList;->hasCnt()Z

    move-result v0

    return v0
.end method

.method public removeCarlifeContacts(I)Lcom/baidu/carlife/protobuf/CarlifeContactsListProto$CarlifeContactsList$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeContactsListProto$CarlifeContactsList;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeContactsListProto$CarlifeContactsList;->access$1100(Lcom/baidu/carlife/protobuf/CarlifeContactsListProto$CarlifeContactsList;I)V

    return-object p0
.end method

.method public setCarlifeContacts(ILcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts$Builder;)Lcom/baidu/carlife/protobuf/CarlifeContactsListProto$CarlifeContactsList$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeContactsListProto$CarlifeContactsList;

    invoke-static {v0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeContactsListProto$CarlifeContactsList;->access$400(Lcom/baidu/carlife/protobuf/CarlifeContactsListProto$CarlifeContactsList;ILcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts$Builder;)V

    return-object p0
.end method

.method public setCarlifeContacts(ILcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;)Lcom/baidu/carlife/protobuf/CarlifeContactsListProto$CarlifeContactsList$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeContactsListProto$CarlifeContactsList;

    invoke-static {v0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeContactsListProto$CarlifeContactsList;->access$300(Lcom/baidu/carlife/protobuf/CarlifeContactsListProto$CarlifeContactsList;ILcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;)V

    return-object p0
.end method

.method public setCnt(I)Lcom/baidu/carlife/protobuf/CarlifeContactsListProto$CarlifeContactsList$Builder;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeContactsListProto$CarlifeContactsList;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeContactsListProto$CarlifeContactsList;->access$100(Lcom/baidu/carlife/protobuf/CarlifeContactsListProto$CarlifeContactsList;I)V

    return-object p0
.end method
