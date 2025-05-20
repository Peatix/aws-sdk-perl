
package Paws::CleanRoomsML::GetMLConfiguration;
  use Moose;
  has MembershipIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'membershipIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetMLConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/memberships/{membershipIdentifier}/ml-configurations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CleanRoomsML::GetMLConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRoomsML::GetMLConfiguration - Arguments for method GetMLConfiguration on L<Paws::CleanRoomsML>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetMLConfiguration on the
L<AWS Clean Rooms ML|Paws::CleanRoomsML> service. Use the attributes of this class
as arguments to method GetMLConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetMLConfiguration.

=head1 SYNOPSIS

    my $cleanrooms-ml = Paws->service('CleanRoomsML');
    my $GetMLConfigurationResponse = $cleanrooms -ml->GetMLConfiguration(
      MembershipIdentifier => 'MyUUID',

    );

    # Results:
    my $CreateTime = $GetMLConfigurationResponse->CreateTime;
    my $DefaultOutputLocation =
      $GetMLConfigurationResponse->DefaultOutputLocation;
    my $MembershipIdentifier =
      $GetMLConfigurationResponse->MembershipIdentifier;
    my $UpdateTime = $GetMLConfigurationResponse->UpdateTime;

    # Returns a L<Paws::CleanRoomsML::GetMLConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cleanrooms-ml/GetMLConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MembershipIdentifier => Str

The membership ID of the member that owns the ML configuration you want
to return information about.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetMLConfiguration in L<Paws::CleanRoomsML>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

