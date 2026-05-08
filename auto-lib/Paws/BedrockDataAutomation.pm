package Paws::BedrockDataAutomation;
  use Moose;
  sub service { 'bedrock-data-automation' }
  sub signing_name { 'bedrock' }
  sub version { '2023-07-26' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CreateBlueprint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockDataAutomation::CreateBlueprint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateBlueprintVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockDataAutomation::CreateBlueprintVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDataAutomationProject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockDataAutomation::CreateDataAutomationProject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBlueprint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockDataAutomation::DeleteBlueprint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDataAutomationProject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockDataAutomation::DeleteDataAutomationProject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBlueprint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockDataAutomation::GetBlueprint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDataAutomationProject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockDataAutomation::GetDataAutomationProject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBlueprints {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockDataAutomation::ListBlueprints', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDataAutomationProjects {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockDataAutomation::ListDataAutomationProjects', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockDataAutomation::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockDataAutomation::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockDataAutomation::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateBlueprint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockDataAutomation::UpdateBlueprint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDataAutomationProject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockDataAutomation::UpdateDataAutomationProject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllBlueprints {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListBlueprints(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListBlueprints(@_, nextToken => $next_result->nextToken);
        push @{ $result->blueprints }, @{ $next_result->blueprints };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'blueprints') foreach (@{ $result->blueprints });
        $result = $self->ListBlueprints(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'blueprints') foreach (@{ $result->blueprints });
    }

    return undef
  }
  sub ListAllDataAutomationProjects {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDataAutomationProjects(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListDataAutomationProjects(@_, nextToken => $next_result->nextToken);
        push @{ $result->projects }, @{ $next_result->projects };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'projects') foreach (@{ $result->projects });
        $result = $self->ListDataAutomationProjects(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'projects') foreach (@{ $result->projects });
    }

    return undef
  }


  sub operations { qw/CreateBlueprint CreateBlueprintVersion CreateDataAutomationProject DeleteBlueprint DeleteDataAutomationProject GetBlueprint GetDataAutomationProject ListBlueprints ListDataAutomationProjects ListTagsForResource TagResource UntagResource UpdateBlueprint UpdateDataAutomationProject / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockDataAutomation - Perl Interface to AWS Data Automation for Amazon Bedrock

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('BedrockDataAutomation');
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

Amazon Bedrock Data Automation BuildTime

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 CreateBlueprint

=over

=item BlueprintName => Str

=item Schema => Str

=item Type => Str

=item [BlueprintStage => Str]

=item [ClientToken => Str]

=item [EncryptionConfiguration => L<Paws::BedrockDataAutomation::EncryptionConfiguration>]

=item [Tags => ArrayRef[L<Paws::BedrockDataAutomation::Tag>]]


=back

Each argument is described in detail in: L<Paws::BedrockDataAutomation::CreateBlueprint>

Returns: a L<Paws::BedrockDataAutomation::CreateBlueprintResponse> instance

Creates an Amazon Bedrock Data Automation Blueprint


=head2 CreateBlueprintVersion

=over

=item BlueprintArn => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::BedrockDataAutomation::CreateBlueprintVersion>

Returns: a L<Paws::BedrockDataAutomation::CreateBlueprintVersionResponse> instance

Creates a new version of an existing Amazon Bedrock Data Automation
Blueprint


=head2 CreateDataAutomationProject

=over

=item ProjectName => Str

=item StandardOutputConfiguration => L<Paws::BedrockDataAutomation::StandardOutputConfiguration>

=item [ClientToken => Str]

=item [CustomOutputConfiguration => L<Paws::BedrockDataAutomation::CustomOutputConfiguration>]

=item [EncryptionConfiguration => L<Paws::BedrockDataAutomation::EncryptionConfiguration>]

=item [OverrideConfiguration => L<Paws::BedrockDataAutomation::OverrideConfiguration>]

=item [ProjectDescription => Str]

=item [ProjectStage => Str]

=item [Tags => ArrayRef[L<Paws::BedrockDataAutomation::Tag>]]


=back

Each argument is described in detail in: L<Paws::BedrockDataAutomation::CreateDataAutomationProject>

Returns: a L<Paws::BedrockDataAutomation::CreateDataAutomationProjectResponse> instance

Creates an Amazon Bedrock Data Automation Project


=head2 DeleteBlueprint

=over

=item BlueprintArn => Str

=item [BlueprintVersion => Str]


=back

Each argument is described in detail in: L<Paws::BedrockDataAutomation::DeleteBlueprint>

Returns: a L<Paws::BedrockDataAutomation::DeleteBlueprintResponse> instance

Deletes an existing Amazon Bedrock Data Automation Blueprint


=head2 DeleteDataAutomationProject

=over

=item ProjectArn => Str


=back

Each argument is described in detail in: L<Paws::BedrockDataAutomation::DeleteDataAutomationProject>

Returns: a L<Paws::BedrockDataAutomation::DeleteDataAutomationProjectResponse> instance

Deletes an existing Amazon Bedrock Data Automation Project


=head2 GetBlueprint

=over

=item BlueprintArn => Str

=item [BlueprintStage => Str]

=item [BlueprintVersion => Str]


=back

Each argument is described in detail in: L<Paws::BedrockDataAutomation::GetBlueprint>

Returns: a L<Paws::BedrockDataAutomation::GetBlueprintResponse> instance

Gets an existing Amazon Bedrock Data Automation Blueprint


=head2 GetDataAutomationProject

=over

=item ProjectArn => Str

=item [ProjectStage => Str]


=back

Each argument is described in detail in: L<Paws::BedrockDataAutomation::GetDataAutomationProject>

Returns: a L<Paws::BedrockDataAutomation::GetDataAutomationProjectResponse> instance

Gets an existing Amazon Bedrock Data Automation Project


=head2 ListBlueprints

=over

=item [BlueprintArn => Str]

=item [BlueprintStageFilter => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ProjectFilter => L<Paws::BedrockDataAutomation::DataAutomationProjectFilter>]

=item [ResourceOwner => Str]


=back

Each argument is described in detail in: L<Paws::BedrockDataAutomation::ListBlueprints>

Returns: a L<Paws::BedrockDataAutomation::ListBlueprintsResponse> instance

Lists all existing Amazon Bedrock Data Automation Blueprints


=head2 ListDataAutomationProjects

=over

=item [BlueprintFilter => L<Paws::BedrockDataAutomation::BlueprintFilter>]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ProjectStageFilter => Str]

=item [ResourceOwner => Str]


=back

Each argument is described in detail in: L<Paws::BedrockDataAutomation::ListDataAutomationProjects>

Returns: a L<Paws::BedrockDataAutomation::ListDataAutomationProjectsResponse> instance

Lists all existing Amazon Bedrock Data Automation Projects


=head2 ListTagsForResource

=over

=item ResourceARN => Str


=back

Each argument is described in detail in: L<Paws::BedrockDataAutomation::ListTagsForResource>

Returns: a L<Paws::BedrockDataAutomation::ListTagsForResourceResponse> instance

List tags for an Amazon Bedrock Data Automation resource


=head2 TagResource

=over

=item ResourceARN => Str

=item Tags => ArrayRef[L<Paws::BedrockDataAutomation::Tag>]


=back

Each argument is described in detail in: L<Paws::BedrockDataAutomation::TagResource>

Returns: a L<Paws::BedrockDataAutomation::TagResourceResponse> instance

Tag an Amazon Bedrock Data Automation resource


=head2 UntagResource

=over

=item ResourceARN => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::BedrockDataAutomation::UntagResource>

Returns: a L<Paws::BedrockDataAutomation::UntagResourceResponse> instance

Untag an Amazon Bedrock Data Automation resource


=head2 UpdateBlueprint

=over

=item BlueprintArn => Str

=item Schema => Str

=item [BlueprintStage => Str]

=item [EncryptionConfiguration => L<Paws::BedrockDataAutomation::EncryptionConfiguration>]


=back

Each argument is described in detail in: L<Paws::BedrockDataAutomation::UpdateBlueprint>

Returns: a L<Paws::BedrockDataAutomation::UpdateBlueprintResponse> instance

Updates an existing Amazon Bedrock Data Automation Blueprint


=head2 UpdateDataAutomationProject

=over

=item ProjectArn => Str

=item StandardOutputConfiguration => L<Paws::BedrockDataAutomation::StandardOutputConfiguration>

=item [CustomOutputConfiguration => L<Paws::BedrockDataAutomation::CustomOutputConfiguration>]

=item [EncryptionConfiguration => L<Paws::BedrockDataAutomation::EncryptionConfiguration>]

=item [OverrideConfiguration => L<Paws::BedrockDataAutomation::OverrideConfiguration>]

=item [ProjectDescription => Str]

=item [ProjectStage => Str]


=back

Each argument is described in detail in: L<Paws::BedrockDataAutomation::UpdateDataAutomationProject>

Returns: a L<Paws::BedrockDataAutomation::UpdateDataAutomationProjectResponse> instance

Updates an existing Amazon Bedrock Data Automation Project




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllBlueprints(sub { },[BlueprintArn => Str, BlueprintStageFilter => Str, MaxResults => Int, NextToken => Str, ProjectFilter => L<Paws::BedrockDataAutomation::DataAutomationProjectFilter>, ResourceOwner => Str])

=head2 ListAllBlueprints([BlueprintArn => Str, BlueprintStageFilter => Str, MaxResults => Int, NextToken => Str, ProjectFilter => L<Paws::BedrockDataAutomation::DataAutomationProjectFilter>, ResourceOwner => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - blueprints, passing the object as the first parameter, and the string 'blueprints' as the second parameter 

If not, it will return a a L<Paws::BedrockDataAutomation::ListBlueprintsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDataAutomationProjects(sub { },[BlueprintFilter => L<Paws::BedrockDataAutomation::BlueprintFilter>, MaxResults => Int, NextToken => Str, ProjectStageFilter => Str, ResourceOwner => Str])

=head2 ListAllDataAutomationProjects([BlueprintFilter => L<Paws::BedrockDataAutomation::BlueprintFilter>, MaxResults => Int, NextToken => Str, ProjectStageFilter => Str, ResourceOwner => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - projects, passing the object as the first parameter, and the string 'projects' as the second parameter 

If not, it will return a a L<Paws::BedrockDataAutomation::ListDataAutomationProjectsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

