
package Paws::Outposts::GetConnection;
  use Moose;
  has ConnectionId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ConnectionId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetConnection');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/connections/{ConnectionId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Outposts::GetConnectionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Outposts::GetConnection - Arguments for method GetConnection on L<Paws::Outposts>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetConnection on the
L<AWS Outposts|Paws::Outposts> service. Use the attributes of this class
as arguments to method GetConnection.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetConnection.

=head1 SYNOPSIS

    my $outposts = Paws->service('Outposts');
    my $GetConnectionResponse = $outposts->GetConnection(
      ConnectionId => 'MyConnectionId',

    );

    # Results:
    my $ConnectionDetails = $GetConnectionResponse->ConnectionDetails;
    my $ConnectionId      = $GetConnectionResponse->ConnectionId;

    # Returns a L<Paws::Outposts::GetConnectionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/outposts/GetConnection>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConnectionId => Str

The ID of the connection.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetConnection in L<Paws::Outposts>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

