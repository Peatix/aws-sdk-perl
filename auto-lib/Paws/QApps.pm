package Paws::QApps;
  use Moose;
  sub service { 'data.qapps' }
  sub signing_name { 'qapps' }
  sub version { '2023-11-27' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub AssociateLibraryItemReview {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QApps::AssociateLibraryItemReview', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateQAppWithUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QApps::AssociateQAppWithUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchCreateCategory {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QApps::BatchCreateCategory', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchDeleteCategory {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QApps::BatchDeleteCategory', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchUpdateCategory {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QApps::BatchUpdateCategory', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateLibraryItem {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QApps::CreateLibraryItem', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePresignedUrl {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QApps::CreatePresignedUrl', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateQApp {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QApps::CreateQApp', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteLibraryItem {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QApps::DeleteLibraryItem', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteQApp {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QApps::DeleteQApp', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeQAppPermissions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QApps::DescribeQAppPermissions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateLibraryItemReview {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QApps::DisassociateLibraryItemReview', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateQAppFromUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QApps::DisassociateQAppFromUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ExportQAppSessionData {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QApps::ExportQAppSessionData', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLibraryItem {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QApps::GetLibraryItem', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetQApp {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QApps::GetQApp', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetQAppSession {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QApps::GetQAppSession', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetQAppSessionMetadata {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QApps::GetQAppSessionMetadata', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ImportDocument {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QApps::ImportDocument', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCategories {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QApps::ListCategories', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListLibraryItems {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QApps::ListLibraryItems', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListQApps {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QApps::ListQApps', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListQAppSessionData {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QApps::ListQAppSessionData', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QApps::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PredictQApp {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QApps::PredictQApp', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartQAppSession {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QApps::StartQAppSession', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopQAppSession {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QApps::StopQAppSession', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QApps::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QApps::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateLibraryItem {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QApps::UpdateLibraryItem', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateLibraryItemMetadata {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QApps::UpdateLibraryItemMetadata', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateQApp {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QApps::UpdateQApp', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateQAppPermissions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QApps::UpdateQAppPermissions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateQAppSession {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QApps::UpdateQAppSession', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateQAppSessionMetadata {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QApps::UpdateQAppSessionMetadata', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllLibraryItems {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListLibraryItems(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListLibraryItems(@_, nextToken => $next_result->nextToken);
        push @{ $result->libraryItems }, @{ $next_result->libraryItems };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'libraryItems') foreach (@{ $result->libraryItems });
        $result = $self->ListLibraryItems(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'libraryItems') foreach (@{ $result->libraryItems });
    }

    return undef
  }
  sub ListAllQApps {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListQApps(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListQApps(@_, nextToken => $next_result->nextToken);
        push @{ $result->apps }, @{ $next_result->apps };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'apps') foreach (@{ $result->apps });
        $result = $self->ListQApps(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'apps') foreach (@{ $result->apps });
    }

    return undef
  }


  sub operations { qw/AssociateLibraryItemReview AssociateQAppWithUser BatchCreateCategory BatchDeleteCategory BatchUpdateCategory CreateLibraryItem CreatePresignedUrl CreateQApp DeleteLibraryItem DeleteQApp DescribeQAppPermissions DisassociateLibraryItemReview DisassociateQAppFromUser ExportQAppSessionData GetLibraryItem GetQApp GetQAppSession GetQAppSessionMetadata ImportDocument ListCategories ListLibraryItems ListQApps ListQAppSessionData ListTagsForResource PredictQApp StartQAppSession StopQAppSession TagResource UntagResource UpdateLibraryItem UpdateLibraryItemMetadata UpdateQApp UpdateQAppPermissions UpdateQAppSession UpdateQAppSessionMetadata / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::QApps - Perl Interface to AWS QApps

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('QApps');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

The Amazon Q Apps feature capability within Amazon Q Business allows
web experience users to create lightweight, purpose-built AI apps to
fulfill specific tasks from within their web experience. For example,
users can create a Q App that exclusively generates marketing-related
content to improve your marketing team's productivity or a Q App for
writing customer emails and creating promotional content using a
certain style of voice, tone, and branding. For more information on the
capabilities, see Amazon Q Apps capabilities
(https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/deploy-experience-iam-role.html#q-apps-actions)
in the I<Amazon Q Business User Guide>.

For an overview of the Amazon Q App APIs, see Overview of Amazon Q Apps
API operations
(https://docs.aws.amazon.com/amazonq/latest/api-reference/API_Operations_QApps.html).

For information about the IAM access control permissions you need to
use the Amazon Q Apps API, see IAM role for the Amazon Q Business web
experience including Amazon Q Apps
(https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/deploy-experience-iam-role.html)
in the I<Amazon Q Business User Guide>.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/data.qapps-2023-11-27>


=head1 METHODS

=head2 AssociateLibraryItemReview

=over

=item InstanceId => Str

=item LibraryItemId => Str


=back

Each argument is described in detail in: L<Paws::QApps::AssociateLibraryItemReview>

Returns: nothing

Associates a rating or review for a library item with the user
submitting the request. This increments the rating count for the
specified library item.


=head2 AssociateQAppWithUser

=over

=item AppId => Str

=item InstanceId => Str


=back

Each argument is described in detail in: L<Paws::QApps::AssociateQAppWithUser>

Returns: nothing

This operation creates a link between the user's identity calling the
operation and a specific Q App. This is useful to mark the Q App as a
I<favorite> for the user if the user doesn't own the Amazon Q App so
they can still run it and see it in their inventory of Q Apps.


=head2 BatchCreateCategory

=over

=item Categories => ArrayRef[L<Paws::QApps::BatchCreateCategoryInputCategory>]

=item InstanceId => Str


=back

Each argument is described in detail in: L<Paws::QApps::BatchCreateCategory>

Returns: nothing

Creates Categories for the Amazon Q Business application environment
instance. Web experience users use Categories to tag and filter library
items. For more information, see Custom labels for Amazon Q Apps
(https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/qapps-custom-labels.html).


=head2 BatchDeleteCategory

=over

=item Categories => ArrayRef[Str|Undef]

=item InstanceId => Str


=back

Each argument is described in detail in: L<Paws::QApps::BatchDeleteCategory>

Returns: nothing

Deletes Categories for the Amazon Q Business application environment
instance. Web experience users use Categories to tag and filter library
items. For more information, see Custom labels for Amazon Q Apps
(https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/qapps-custom-labels.html).


=head2 BatchUpdateCategory

=over

=item Categories => ArrayRef[L<Paws::QApps::CategoryInput>]

=item InstanceId => Str


=back

Each argument is described in detail in: L<Paws::QApps::BatchUpdateCategory>

Returns: nothing

Updates Categories for the Amazon Q Business application environment
instance. Web experience users use Categories to tag and filter library
items. For more information, see Custom labels for Amazon Q Apps
(https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/qapps-custom-labels.html).


=head2 CreateLibraryItem

=over

=item AppId => Str

=item AppVersion => Int

=item Categories => ArrayRef[Str|Undef]

=item InstanceId => Str


=back

Each argument is described in detail in: L<Paws::QApps::CreateLibraryItem>

Returns: a L<Paws::QApps::CreateLibraryItemOutput> instance

Creates a new library item for an Amazon Q App, allowing it to be
discovered and used by other allowed users.


=head2 CreatePresignedUrl

=over

=item AppId => Str

=item CardId => Str

=item FileContentsSha256 => Str

=item FileName => Str

=item InstanceId => Str

=item Scope => Str

=item [SessionId => Str]


=back

Each argument is described in detail in: L<Paws::QApps::CreatePresignedUrl>

Returns: a L<Paws::QApps::CreatePresignedUrlOutput> instance

Creates a presigned URL for an S3 POST operation to upload a file. You
can use this URL to set a default file for a C<FileUploadCard> in a Q
App definition or to provide a file for a single Q App run. The
C<scope> parameter determines how the file will be used, either at the
app definition level or the app session level.


=head2 CreateQApp

=over

=item AppDefinition => L<Paws::QApps::AppDefinitionInput>

=item InstanceId => Str

=item Title => Str

=item [Description => Str]

=item [Tags => L<Paws::QApps::TagMap>]


=back

Each argument is described in detail in: L<Paws::QApps::CreateQApp>

Returns: a L<Paws::QApps::CreateQAppOutput> instance

Creates a new Amazon Q App based on the provided definition. The Q App
definition specifies the cards and flow of the Q App. This operation
also calculates the dependencies between the cards by inspecting the
references in the prompts.


=head2 DeleteLibraryItem

=over

=item InstanceId => Str

=item LibraryItemId => Str


=back

Each argument is described in detail in: L<Paws::QApps::DeleteLibraryItem>

Returns: nothing

Deletes a library item for an Amazon Q App, removing it from the
library so it can no longer be discovered or used by other users.


=head2 DeleteQApp

=over

=item AppId => Str

=item InstanceId => Str


=back

Each argument is described in detail in: L<Paws::QApps::DeleteQApp>

Returns: nothing

Deletes an Amazon Q App owned by the user. If the Q App was previously
published to the library, it is also removed from the library.


=head2 DescribeQAppPermissions

=over

=item AppId => Str

=item InstanceId => Str


=back

Each argument is described in detail in: L<Paws::QApps::DescribeQAppPermissions>

Returns: a L<Paws::QApps::DescribeQAppPermissionsOutput> instance

Describes read permissions for a Amazon Q App in Amazon Q Business
application environment instance.


=head2 DisassociateLibraryItemReview

=over

=item InstanceId => Str

=item LibraryItemId => Str


=back

Each argument is described in detail in: L<Paws::QApps::DisassociateLibraryItemReview>

Returns: nothing

Removes a rating or review previously submitted by the user for a
library item.


=head2 DisassociateQAppFromUser

=over

=item AppId => Str

=item InstanceId => Str


=back

Each argument is described in detail in: L<Paws::QApps::DisassociateQAppFromUser>

Returns: nothing

Disassociates a Q App from a user removing the user's access to run the
Q App.


=head2 ExportQAppSessionData

=over

=item InstanceId => Str

=item SessionId => Str


=back

Each argument is described in detail in: L<Paws::QApps::ExportQAppSessionData>

Returns: a L<Paws::QApps::ExportQAppSessionDataOutput> instance

Exports the collected data of a Q App data collection session.


=head2 GetLibraryItem

=over

=item InstanceId => Str

=item LibraryItemId => Str

=item [AppId => Str]


=back

Each argument is described in detail in: L<Paws::QApps::GetLibraryItem>

Returns: a L<Paws::QApps::GetLibraryItemOutput> instance

Retrieves details about a library item for an Amazon Q App, including
its metadata, categories, ratings, and usage statistics.


=head2 GetQApp

=over

=item AppId => Str

=item InstanceId => Str

=item [AppVersion => Int]


=back

Each argument is described in detail in: L<Paws::QApps::GetQApp>

Returns: a L<Paws::QApps::GetQAppOutput> instance

Retrieves the full details of an Q App, including its definition
specifying the cards and flow.


=head2 GetQAppSession

=over

=item InstanceId => Str

=item SessionId => Str


=back

Each argument is described in detail in: L<Paws::QApps::GetQAppSession>

Returns: a L<Paws::QApps::GetQAppSessionOutput> instance

Retrieves the current state and results for an active session of an
Amazon Q App.


=head2 GetQAppSessionMetadata

=over

=item InstanceId => Str

=item SessionId => Str


=back

Each argument is described in detail in: L<Paws::QApps::GetQAppSessionMetadata>

Returns: a L<Paws::QApps::GetQAppSessionMetadataOutput> instance

Retrieves the current configuration of a Q App session.


=head2 ImportDocument

=over

=item AppId => Str

=item CardId => Str

=item FileContentsBase64 => Str

=item FileName => Str

=item InstanceId => Str

=item Scope => Str

=item [SessionId => Str]


=back

Each argument is described in detail in: L<Paws::QApps::ImportDocument>

Returns: a L<Paws::QApps::ImportDocumentOutput> instance

Uploads a file that can then be used either as a default in a
C<FileUploadCard> from Q App definition or as a file that is used
inside a single Q App run. The purpose of the document is determined by
a scope parameter that indicates whether it is at the app definition
level or at the app session level.


=head2 ListCategories

=over

=item InstanceId => Str


=back

Each argument is described in detail in: L<Paws::QApps::ListCategories>

Returns: a L<Paws::QApps::ListCategoriesOutput> instance

Lists the categories of a Amazon Q Business application environment
instance. For more information, see Custom labels for Amazon Q Apps
(https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/qapps-custom-labels.html).


=head2 ListLibraryItems

=over

=item InstanceId => Str

=item [CategoryId => Str]

=item [Limit => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::QApps::ListLibraryItems>

Returns: a L<Paws::QApps::ListLibraryItemsOutput> instance

Lists the library items for Amazon Q Apps that are published and
available for users in your Amazon Web Services account.


=head2 ListQApps

=over

=item InstanceId => Str

=item [Limit => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::QApps::ListQApps>

Returns: a L<Paws::QApps::ListQAppsOutput> instance

Lists the Amazon Q Apps owned by or associated with the user either
because they created it or because they used it from the library in the
past. The user identity is extracted from the credentials used to
invoke this operation..


=head2 ListQAppSessionData

=over

=item InstanceId => Str

=item SessionId => Str


=back

Each argument is described in detail in: L<Paws::QApps::ListQAppSessionData>

Returns: a L<Paws::QApps::ListQAppSessionDataOutput> instance

Lists the collected data of a Q App data collection session.


=head2 ListTagsForResource

=over

=item ResourceARN => Str


=back

Each argument is described in detail in: L<Paws::QApps::ListTagsForResource>

Returns: a L<Paws::QApps::ListTagsForResourceResponse> instance

Lists the tags associated with an Amazon Q Apps resource.


=head2 PredictQApp

=over

=item InstanceId => Str

=item [Options => L<Paws::QApps::PredictQAppInputOptions>]


=back

Each argument is described in detail in: L<Paws::QApps::PredictQApp>

Returns: a L<Paws::QApps::PredictQAppOutput> instance

Generates an Amazon Q App definition based on either a conversation or
a problem statement provided as input.The resulting app definition can
be used to call C<CreateQApp>. This API doesn't create Amazon Q Apps
directly.


=head2 StartQAppSession

=over

=item AppId => Str

=item AppVersion => Int

=item InstanceId => Str

=item [InitialValues => ArrayRef[L<Paws::QApps::CardValue>]]

=item [SessionId => Str]

=item [Tags => L<Paws::QApps::TagMap>]


=back

Each argument is described in detail in: L<Paws::QApps::StartQAppSession>

Returns: a L<Paws::QApps::StartQAppSessionOutput> instance

Starts a new session for an Amazon Q App, allowing inputs to be
provided and the app to be run.

Each Q App session will be condensed into a single conversation in the
web experience.


=head2 StopQAppSession

=over

=item InstanceId => Str

=item SessionId => Str


=back

Each argument is described in detail in: L<Paws::QApps::StopQAppSession>

Returns: nothing

Stops an active session for an Amazon Q App.This deletes all data
related to the session and makes it invalid for future uses. The
results of the session will be persisted as part of the conversation.


=head2 TagResource

=over

=item ResourceARN => Str

=item Tags => L<Paws::QApps::Tags>


=back

Each argument is described in detail in: L<Paws::QApps::TagResource>

Returns: a L<Paws::QApps::TagResourceResponse> instance

Associates tags with an Amazon Q Apps resource.


=head2 UntagResource

=over

=item ResourceARN => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::QApps::UntagResource>

Returns: a L<Paws::QApps::UntagResourceResponse> instance

Disassociates tags from an Amazon Q Apps resource.


=head2 UpdateLibraryItem

=over

=item InstanceId => Str

=item LibraryItemId => Str

=item [Categories => ArrayRef[Str|Undef]]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::QApps::UpdateLibraryItem>

Returns: a L<Paws::QApps::UpdateLibraryItemOutput> instance

Updates the library item for an Amazon Q App.


=head2 UpdateLibraryItemMetadata

=over

=item InstanceId => Str

=item LibraryItemId => Str

=item [IsVerified => Bool]


=back

Each argument is described in detail in: L<Paws::QApps::UpdateLibraryItemMetadata>

Returns: nothing

Updates the verification status of a library item for an Amazon Q App.


=head2 UpdateQApp

=over

=item AppId => Str

=item InstanceId => Str

=item [AppDefinition => L<Paws::QApps::AppDefinitionInput>]

=item [Description => Str]

=item [Title => Str]


=back

Each argument is described in detail in: L<Paws::QApps::UpdateQApp>

Returns: a L<Paws::QApps::UpdateQAppOutput> instance

Updates an existing Amazon Q App, allowing modifications to its title,
description, and definition.


=head2 UpdateQAppPermissions

=over

=item AppId => Str

=item InstanceId => Str

=item [GrantPermissions => ArrayRef[L<Paws::QApps::PermissionInput>]]

=item [RevokePermissions => ArrayRef[L<Paws::QApps::PermissionInput>]]


=back

Each argument is described in detail in: L<Paws::QApps::UpdateQAppPermissions>

Returns: a L<Paws::QApps::UpdateQAppPermissionsOutput> instance

Updates read permissions for a Amazon Q App in Amazon Q Business
application environment instance.


=head2 UpdateQAppSession

=over

=item InstanceId => Str

=item SessionId => Str

=item [Values => ArrayRef[L<Paws::QApps::CardValue>]]


=back

Each argument is described in detail in: L<Paws::QApps::UpdateQAppSession>

Returns: a L<Paws::QApps::UpdateQAppSessionOutput> instance

Updates the session for a given Q App C<sessionId>. This is only valid
when at least one card of the session is in the C<WAITING> state. Data
for each C<WAITING> card can be provided as input. If inputs are not
provided, the call will be accepted but session will not move forward.
Inputs for cards that are not in the C<WAITING> status will be ignored.


=head2 UpdateQAppSessionMetadata

=over

=item InstanceId => Str

=item SessionId => Str

=item SharingConfiguration => L<Paws::QApps::SessionSharingConfiguration>

=item [SessionName => Str]


=back

Each argument is described in detail in: L<Paws::QApps::UpdateQAppSessionMetadata>

Returns: a L<Paws::QApps::UpdateQAppSessionMetadataOutput> instance

Updates the configuration metadata of a session for a given Q App
C<sessionId>.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllLibraryItems(sub { },InstanceId => Str, [CategoryId => Str, Limit => Int, NextToken => Str])

=head2 ListAllLibraryItems(InstanceId => Str, [CategoryId => Str, Limit => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - libraryItems, passing the object as the first parameter, and the string 'libraryItems' as the second parameter 

If not, it will return a a L<Paws::QApps::ListLibraryItemsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllQApps(sub { },InstanceId => Str, [Limit => Int, NextToken => Str])

=head2 ListAllQApps(InstanceId => Str, [Limit => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - apps, passing the object as the first parameter, and the string 'apps' as the second parameter 

If not, it will return a a L<Paws::QApps::ListQAppsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

