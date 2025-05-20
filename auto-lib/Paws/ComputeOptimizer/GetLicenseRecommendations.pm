
package Paws::ComputeOptimizer::GetLicenseRecommendations;
  use Moose;
  has AccountIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'accountIds' );
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::ComputeOptimizer::LicenseRecommendationFilter]', traits => ['NameInRequest'], request_name => 'filters' );
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has ResourceArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'resourceArns' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetLicenseRecommendations');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ComputeOptimizer::GetLicenseRecommendationsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ComputeOptimizer::GetLicenseRecommendations - Arguments for method GetLicenseRecommendations on L<Paws::ComputeOptimizer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetLicenseRecommendations on the
L<AWS Compute Optimizer|Paws::ComputeOptimizer> service. Use the attributes of this class
as arguments to method GetLicenseRecommendations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetLicenseRecommendations.

=head1 SYNOPSIS

    my $compute-optimizer = Paws->service('ComputeOptimizer');
    my $GetLicenseRecommendationsResponse =
      $compute -optimizer->GetLicenseRecommendations(
      AccountIds => [ 'MyAccountId', ... ],    # OPTIONAL
      Filters    => [
        {
          Name => 'Finding'
          ,    # values: Finding, FindingReasonCode, LicenseName; OPTIONAL
          Values => [ 'MyFilterValue', ... ],    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      MaxResults   => 1,                           # OPTIONAL
      NextToken    => 'MyNextToken',               # OPTIONAL
      ResourceArns => [ 'MyResourceArn', ... ],    # OPTIONAL
      );

    # Results:
    my $Errors = $GetLicenseRecommendationsResponse->Errors;
    my $LicenseRecommendations =
      $GetLicenseRecommendationsResponse->LicenseRecommendations;
    my $NextToken = $GetLicenseRecommendationsResponse->NextToken;

# Returns a L<Paws::ComputeOptimizer::GetLicenseRecommendationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/compute-optimizer/GetLicenseRecommendations>

=head1 ATTRIBUTES


=head2 AccountIds => ArrayRef[Str|Undef]

The ID of the Amazon Web Services account for which to return license
recommendations.

If your account is the management account of an organization, use this
parameter to specify the member account for which you want to return
license recommendations.

Only one account ID can be specified per request.



=head2 Filters => ArrayRef[L<Paws::ComputeOptimizer::LicenseRecommendationFilter>]

An array of objects to specify a filter that returns a more specific
list of license recommendations.



=head2 MaxResults => Int

The maximum number of license recommendations to return with a single
request.

To retrieve the remaining results, make another request with the
returned C<nextToken> value.



=head2 NextToken => Str

The token to advance to the next page of license recommendations.



=head2 ResourceArns => ArrayRef[Str|Undef]

The ARN that identifies the Amazon EC2 instance.

The following is the format of the ARN:

C<arn:aws:ec2:region:aws_account_id:instance/instance-id>




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetLicenseRecommendations in L<Paws::ComputeOptimizer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

