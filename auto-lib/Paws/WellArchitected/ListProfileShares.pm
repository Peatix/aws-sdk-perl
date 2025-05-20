
package Paws::WellArchitected::ListProfileShares;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'MaxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'NextToken');
  has ProfileArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ProfileArn', required => 1);
  has SharedWithPrefix => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'SharedWithPrefix');
  has Status => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'Status');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListProfileShares');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/profiles/{ProfileArn}/shares');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WellArchitected::ListProfileSharesOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WellArchitected::ListProfileShares - Arguments for method ListProfileShares on L<Paws::WellArchitected>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListProfileShares on the
L<AWS Well-Architected Tool|Paws::WellArchitected> service. Use the attributes of this class
as arguments to method ListProfileShares.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListProfileShares.

=head1 SYNOPSIS

    my $wellarchitected = Paws->service('WellArchitected');
    my $ListProfileSharesOutput = $wellarchitected->ListProfileShares(
      ProfileArn       => 'MyProfileArn',
      MaxResults       => 1,                       # OPTIONAL
      NextToken        => 'MyNextToken',           # OPTIONAL
      SharedWithPrefix => 'MySharedWithPrefix',    # OPTIONAL
      Status           => 'ACCEPTED',              # OPTIONAL
    );

    # Results:
    my $NextToken             = $ListProfileSharesOutput->NextToken;
    my $ProfileShareSummaries = $ListProfileSharesOutput->ProfileShareSummaries;

    # Returns a L<Paws::WellArchitected::ListProfileSharesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wellarchitected/ListProfileShares>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return for this request.



=head2 NextToken => Str





=head2 B<REQUIRED> ProfileArn => Str

The profile ARN.



=head2 SharedWithPrefix => Str

The Amazon Web Services account ID, organization ID, or organizational
unit (OU) ID with which the profile is shared.



=head2 Status => Str



Valid values are: C<"ACCEPTED">, C<"REJECTED">, C<"PENDING">, C<"REVOKED">, C<"EXPIRED">, C<"ASSOCIATING">, C<"ASSOCIATED">, C<"FAILED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListProfileShares in L<Paws::WellArchitected>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

