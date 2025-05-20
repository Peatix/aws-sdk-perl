
package Paws::WellArchitected::ListProfiles;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'MaxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'NextToken');
  has ProfileNamePrefix => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'ProfileNamePrefix');
  has ProfileOwnerType => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'ProfileOwnerType');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListProfiles');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/profileSummaries');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WellArchitected::ListProfilesOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WellArchitected::ListProfiles - Arguments for method ListProfiles on L<Paws::WellArchitected>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListProfiles on the
L<AWS Well-Architected Tool|Paws::WellArchitected> service. Use the attributes of this class
as arguments to method ListProfiles.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListProfiles.

=head1 SYNOPSIS

    my $wellarchitected = Paws->service('WellArchitected');
    my $ListProfilesOutput = $wellarchitected->ListProfiles(
      MaxResults        => 1,                        # OPTIONAL
      NextToken         => 'MyNextToken',            # OPTIONAL
      ProfileNamePrefix => 'MyProfileNamePrefix',    # OPTIONAL
      ProfileOwnerType  => 'SELF',                   # OPTIONAL
    );

    # Results:
    my $NextToken        = $ListProfilesOutput->NextToken;
    my $ProfileSummaries = $ListProfilesOutput->ProfileSummaries;

    # Returns a L<Paws::WellArchitected::ListProfilesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wellarchitected/ListProfiles>

=head1 ATTRIBUTES


=head2 MaxResults => Int





=head2 NextToken => Str





=head2 ProfileNamePrefix => Str

An optional string added to the beginning of each profile name returned
in the results.



=head2 ProfileOwnerType => Str

Profile owner type.

Valid values are: C<"SELF">, C<"SHARED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListProfiles in L<Paws::WellArchitected>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

