
package Paws::CloudFormation::ListResourceScanRelatedResources;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has Resources => (is => 'ro', isa => 'ArrayRef[Paws::CloudFormation::ScannedResourceIdentifier]', required => 1);
  has ResourceScanId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListResourceScanRelatedResources');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFormation::ListResourceScanRelatedResourcesOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListResourceScanRelatedResourcesResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::ListResourceScanRelatedResources - Arguments for method ListResourceScanRelatedResources on L<Paws::CloudFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListResourceScanRelatedResources on the
L<AWS CloudFormation|Paws::CloudFormation> service. Use the attributes of this class
as arguments to method ListResourceScanRelatedResources.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListResourceScanRelatedResources.

=head1 SYNOPSIS

    my $cloudformation = Paws->service('CloudFormation');
    my $ListResourceScanRelatedResourcesOutput =
      $cloudformation->ListResourceScanRelatedResources(
      ResourceScanId => 'MyResourceScanId',
      Resources      => [
        {
          ResourceIdentifier => {
            'MyJazzResourceIdentifierPropertyKey' =>
              'MyJazzResourceIdentifierPropertyValue',
          },
          ResourceType => 'MyResourceType',    # min: 1, max: 256

        },
        ...
      ],
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
      );

    # Results:
    my $NextToken = $ListResourceScanRelatedResourcesOutput->NextToken;
    my $RelatedResources =
      $ListResourceScanRelatedResourcesOutput->RelatedResources;

# Returns a L<Paws::CloudFormation::ListResourceScanRelatedResourcesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudformation/ListResourceScanRelatedResources>

=head1 ATTRIBUTES


=head2 MaxResults => Int

If the number of available results exceeds this maximum, the response
includes a C<NextToken> value that you can use for the C<NextToken>
parameter to get the next set of results. By default the
C<ListResourceScanRelatedResources> API action will return up to 100
results in each response. The maximum value is 100.



=head2 NextToken => Str

A string that identifies the next page of resource scan results.



=head2 B<REQUIRED> Resources => ArrayRef[L<Paws::CloudFormation::ScannedResourceIdentifier>]

The list of resources for which you want to get the related resources.
Up to 100 resources can be provided.



=head2 B<REQUIRED> ResourceScanId => Str

The Amazon Resource Name (ARN) of the resource scan.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListResourceScanRelatedResources in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

