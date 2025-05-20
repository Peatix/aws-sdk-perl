
package Paws::Connect::SearchResourceTags;
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ResourceTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has SearchCriteria => (is => 'ro', isa => 'Paws::Connect::ResourceTagsSearchCriteria');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SearchResourceTags');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/search-resource-tags');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::SearchResourceTagsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::SearchResourceTags - Arguments for method SearchResourceTags on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SearchResourceTags on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method SearchResourceTags.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SearchResourceTags.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $SearchResourceTagsResponse = $connect->SearchResourceTags(
      InstanceId     => 'MyInstanceIdOrArn',
      MaxResults     => 1,                      # OPTIONAL
      NextToken      => 'MyNextToken2500',      # OPTIONAL
      ResourceTypes  => [ 'MyString', ... ],    # OPTIONAL
      SearchCriteria => {
        TagSearchCondition => {
          TagKey               => 'MyTagKeyString',    # max: 128; OPTIONAL
          TagKeyComparisonType =>
            'STARTS_WITH',    # values: STARTS_WITH, CONTAINS, EXACT; OPTIONAL
          TagValue               => 'MyTagValueString',    # max: 256; OPTIONAL
          TagValueComparisonType =>
            'STARTS_WITH',    # values: STARTS_WITH, CONTAINS, EXACT; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $NextToken = $SearchResourceTagsResponse->NextToken;
    my $Tags      = $SearchResourceTagsResponse->Tags;

    # Returns a L<Paws::Connect::SearchResourceTagsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/SearchResourceTags>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance. You can find the
instanceId in the Amazon Resource Name (ARN) of the instance.



=head2 MaxResults => Int

The maximum number of results to return per page.



=head2 NextToken => Str

The token for the next set of results. Use the value returned in the
previous response in the next request to retrieve the next set of
results.



=head2 ResourceTypes => ArrayRef[Str|Undef]

The list of resource types to be used to search tags from. If not
provided or if any empty list is provided, this API will search from
all supported resource types. Note that lowercase and - are required.

B<Supported resource types>

=over

=item *

agent

=item *

agent-state

=item *

routing-profile

=item *

standard-queue

=item *

security-profile

=item *

operating-hours

=item *

prompt

=item *

contact-flow

=item *

flow- module

=item *

transfer-destination (also known as quick connect)

=back




=head2 SearchCriteria => L<Paws::Connect::ResourceTagsSearchCriteria>

The search criteria to be used to return tags.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SearchResourceTags in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

