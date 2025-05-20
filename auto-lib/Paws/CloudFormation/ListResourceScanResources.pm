
package Paws::CloudFormation::ListResourceScanResources;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ResourceIdentifier => (is => 'ro', isa => 'Str');
  has ResourceScanId => (is => 'ro', isa => 'Str', required => 1);
  has ResourceTypePrefix => (is => 'ro', isa => 'Str');
  has TagKey => (is => 'ro', isa => 'Str');
  has TagValue => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListResourceScanResources');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFormation::ListResourceScanResourcesOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListResourceScanResourcesResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::ListResourceScanResources - Arguments for method ListResourceScanResources on L<Paws::CloudFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListResourceScanResources on the
L<AWS CloudFormation|Paws::CloudFormation> service. Use the attributes of this class
as arguments to method ListResourceScanResources.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListResourceScanResources.

=head1 SYNOPSIS

    my $cloudformation = Paws->service('CloudFormation');
    my $ListResourceScanResourcesOutput =
      $cloudformation->ListResourceScanResources(
      ResourceScanId     => 'MyResourceScanId',
      MaxResults         => 1,                         # OPTIONAL
      NextToken          => 'MyNextToken',             # OPTIONAL
      ResourceIdentifier => 'MyResourceIdentifier',    # OPTIONAL
      ResourceTypePrefix => 'MyResourceTypePrefix',    # OPTIONAL
      TagKey             => 'MyTagKey',                # OPTIONAL
      TagValue           => 'MyTagValue',              # OPTIONAL
      );

    # Results:
    my $NextToken = $ListResourceScanResourcesOutput->NextToken;
    my $Resources = $ListResourceScanResourcesOutput->Resources;

    # Returns a L<Paws::CloudFormation::ListResourceScanResourcesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudformation/ListResourceScanResources>

=head1 ATTRIBUTES


=head2 MaxResults => Int

If the number of available results exceeds this maximum, the response
includes a C<NextToken> value that you can use for the C<NextToken>
parameter to get the next set of results. By default the
C<ListResourceScanResources> API action will return at most 100 results
in each response. The maximum value is 100.



=head2 NextToken => Str

A string that identifies the next page of resource scan results.



=head2 ResourceIdentifier => Str

If specified, the returned resources will have the specified resource
identifier (or one of them in the case where the resource has multiple
identifiers).



=head2 B<REQUIRED> ResourceScanId => Str

The Amazon Resource Name (ARN) of the resource scan.



=head2 ResourceTypePrefix => Str

If specified, the returned resources will be of any of the resource
types with the specified prefix.



=head2 TagKey => Str

If specified, the returned resources will have a matching tag key.



=head2 TagValue => Str

If specified, the returned resources will have a matching tag value.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListResourceScanResources in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

