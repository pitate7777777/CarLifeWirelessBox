.class public final Ld/k/d/v$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld/m/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/k/d/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Ld/m/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ld/m/q;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    new-instance p1, Ld/k/d/v;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ld/k/d/v;-><init>(Z)V

    return-object p1
.end method
