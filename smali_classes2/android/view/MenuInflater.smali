.class public Landroid/view/MenuInflater;
.super Ljava/lang/Object;
.source "MenuInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/MenuInflater$InflatedOnMenuItemClickListener;,
        Landroid/view/MenuInflater$MenuState;
    }
.end annotation


# static fields
.field private static final ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "MenuInflater"

.field private static final NO_ID:I = 0x0

.field private static final XML_GROUP:Ljava/lang/String; = "group"

.field private static final XML_ITEM:Ljava/lang/String; = "item"

.field private static final XML_MENU:Ljava/lang/String; = "menu"


# instance fields
.field private final mActionProviderConstructorArguments:[Ljava/lang/Object;

.field private final mActionViewConstructorArguments:[Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mRealOwner:Ljava/lang/Object;


# direct methods
.method static synthetic -get0()[Ljava/lang/Class;
    .locals 1

    sget-object v0, Landroid/view/MenuInflater;->ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic -get1()[Ljava/lang/Class;
    .locals 1

    sget-object v0, Landroid/view/MenuInflater;->ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic -get2(Landroid/view/MenuInflater;)[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/view/MenuInflater;->mActionProviderConstructorArguments:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get3(Landroid/view/MenuInflater;)[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/view/MenuInflater;->mActionViewConstructorArguments:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get4(Landroid/view/MenuInflater;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/view/MenuInflater;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/view/MenuInflater;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Landroid/view/MenuInflater;->getRealOwner()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Landroid/view/MenuInflater;->ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    sget-object v0, Landroid/view/MenuInflater;->ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    sput-object v0, Landroid/view/MenuInflater;->ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/MenuInflater;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Landroid/view/MenuInflater;->mActionViewConstructorArguments:[Ljava/lang/Object;

    iget-object v0, p0, Landroid/view/MenuInflater;->mActionViewConstructorArguments:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/view/MenuInflater;->mActionProviderConstructorArguments:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "realOwner"    # Ljava/lang/Object;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/MenuInflater;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/view/MenuInflater;->mRealOwner:Ljava/lang/Object;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Landroid/view/MenuInflater;->mActionViewConstructorArguments:[Ljava/lang/Object;

    iget-object v0, p0, Landroid/view/MenuInflater;->mActionViewConstructorArguments:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/view/MenuInflater;->mActionProviderConstructorArguments:[Ljava/lang/Object;

    return-void
.end method

.method private findRealOwner(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "owner"    # Ljava/lang/Object;

    .prologue
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/content/ContextWrapper;

    .end local p1    # "owner":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/MenuInflater;->findRealOwner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .restart local p1    # "owner":Ljava/lang/Object;
    :cond_1
    return-object p1
.end method

.method private getRealOwner()Ljava/lang/Object;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/MenuInflater;->mRealOwner:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/MenuInflater;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/view/MenuInflater;->findRealOwner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/view/MenuInflater;->mRealOwner:Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Landroid/view/MenuInflater;->mRealOwner:Ljava/lang/Object;

    return-object v0
.end method

.method private parseMenu(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    .locals 10
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "menu"    # Landroid/view/Menu;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    new-instance v2, Landroid/view/MenuInflater$MenuState;

    invoke-direct {v2, p0, p3}, Landroid/view/MenuInflater$MenuState;-><init>(Landroid/view/MenuInflater;Landroid/view/Menu;)V

    .local v2, "menuState":Landroid/view/MenuInflater$MenuState;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .local v0, "eventType":I
    const/4 v1, 0x0

    .local v1, "lookingForEndOfUnknownTag":Z
    const/4 v6, 0x0

    .local v6, "unknownTagName":Ljava/lang/String;
    :goto_0
    const/4 v7, 0x2

    if-ne v0, v7, :cond_3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .local v5, "tagName":Ljava/lang/String;
    const-string v7, "menu"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .end local v5    # "tagName":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    .end local v6    # "unknownTagName":Ljava/lang/String;
    .local v3, "reachedEndOfMenu":Z
    :goto_1
    if-nez v3, :cond_b

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_1

    .end local v3    # "reachedEndOfMenu":Z
    .restart local v5    # "tagName":Ljava/lang/String;
    .restart local v6    # "unknownTagName":Ljava/lang/String;
    :cond_2
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Expecting menu, got "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .end local v5    # "tagName":Ljava/lang/String;
    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v7, 0x1

    if-eq v0, v7, :cond_0

    goto :goto_0

    .end local v6    # "unknownTagName":Ljava/lang/String;
    .restart local v3    # "reachedEndOfMenu":Z
    :pswitch_0
    if-nez v1, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "tagName":Ljava/lang/String;
    const-string v7, "group"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v2, p2}, Landroid/view/MenuInflater$MenuState;->readGroup(Landroid/util/AttributeSet;)V

    goto :goto_2

    :cond_4
    const-string v7, "item"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v2, p2}, Landroid/view/MenuInflater$MenuState;->readItem(Landroid/util/AttributeSet;)V

    goto :goto_2

    :cond_5
    const-string v7, "menu"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v2}, Landroid/view/MenuInflater$MenuState;->addSubMenuItem()Landroid/view/SubMenu;

    move-result-object v4

    .local v4, "subMenu":Landroid/view/SubMenu;
    invoke-direct {p0, v4, p2}, Landroid/view/MenuInflater;->registerMenu(Landroid/view/SubMenu;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1, p2, v4}, Landroid/view/MenuInflater;->parseMenu(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V

    goto :goto_2

    .end local v4    # "subMenu":Landroid/view/SubMenu;
    :cond_6
    const/4 v1, 0x1

    move-object v6, v5

    .local v6, "unknownTagName":Ljava/lang/String;
    goto :goto_2

    .end local v5    # "tagName":Ljava/lang/String;
    .end local v6    # "unknownTagName":Ljava/lang/String;
    :pswitch_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "tagName":Ljava/lang/String;
    if-eqz v1, :cond_7

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/4 v1, 0x0

    const/4 v6, 0x0

    .local v6, "unknownTagName":Ljava/lang/String;
    goto :goto_2

    .end local v6    # "unknownTagName":Ljava/lang/String;
    :cond_7
    const-string v7, "group"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {v2}, Landroid/view/MenuInflater$MenuState;->resetGroup()V

    goto :goto_2

    :cond_8
    const-string v7, "item"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-virtual {v2}, Landroid/view/MenuInflater$MenuState;->hasAddedItem()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {v2}, Landroid/view/MenuInflater$MenuState;->-get0(Landroid/view/MenuInflater$MenuState;)Landroid/view/ActionProvider;

    move-result-object v7

    if-eqz v7, :cond_9

    invoke-static {v2}, Landroid/view/MenuInflater$MenuState;->-get0(Landroid/view/MenuInflater$MenuState;)Landroid/view/ActionProvider;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ActionProvider;->hasSubMenu()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {v2}, Landroid/view/MenuInflater$MenuState;->addSubMenuItem()Landroid/view/SubMenu;

    move-result-object v7

    invoke-direct {p0, v7, p2}, Landroid/view/MenuInflater;->registerMenu(Landroid/view/SubMenu;Landroid/util/AttributeSet;)V

    goto/16 :goto_2

    :cond_9
    invoke-virtual {v2}, Landroid/view/MenuInflater$MenuState;->addItem()Landroid/view/MenuItem;

    move-result-object v7

    invoke-direct {p0, v7, p2}, Landroid/view/MenuInflater;->registerMenu(Landroid/view/MenuItem;Landroid/util/AttributeSet;)V

    goto/16 :goto_2

    :cond_a
    const-string v7, "menu"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v3, 0x1

    goto/16 :goto_2

    .end local v5    # "tagName":Ljava/lang/String;
    :pswitch_2
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Unexpected end of document"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_b
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private registerMenu(Landroid/view/MenuItem;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "item"    # Landroid/view/MenuItem;
    .param p2, "set"    # Landroid/util/AttributeSet;

    .prologue
    return-void
.end method

.method private registerMenu(Landroid/view/SubMenu;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "subMenu"    # Landroid/view/SubMenu;
    .param p2, "set"    # Landroid/util/AttributeSet;

    .prologue
    return-void
.end method


# virtual methods
.method getContext()Landroid/content/Context;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/MenuInflater;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public inflate(ILandroid/view/Menu;)V
    .locals 6
    .param p1, "menuRes"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x0

    .local v3, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    iget-object v4, p0, Landroid/view/MenuInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    .local v3, "parser":Landroid/content/res/XmlResourceParser;
    invoke-static {v3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .local v0, "attrs":Landroid/util/AttributeSet;
    invoke-direct {p0, v3, v0, p2}, Landroid/view/MenuInflater;->parseMenu(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_0
    return-void

    .end local v0    # "attrs":Landroid/util/AttributeSet;
    .end local v3    # "parser":Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v4, Landroid/view/InflateException;

    const-string v5, "Error inflating menu XML"

    invoke-direct {v4, v5, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_1

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_1
    throw v4

    :catch_1
    move-exception v2

    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_2
    new-instance v4, Landroid/view/InflateException;

    const-string v5, "Error inflating menu XML"

    invoke-direct {v4, v5, v2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method
