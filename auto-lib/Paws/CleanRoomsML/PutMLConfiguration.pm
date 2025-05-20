
package Paws::CleanRoomsML::PutMLConfiguration;
  use Moose;
  has DefaultOutputLocation => (is => 'ro', isa => 'Paws::CleanRoomsML::MLOutputConfiguration', traits => ['NameInRequest'], request_name => 'defaultOutputLocation', required => 1);
  has MembershipIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'membershipIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutMLConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/memberships/{membershipIdentifier}/ml-configurations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRoomsML::PutMLConfiguration - Arguments for method PutMLConfiguration on L<Paws::CleanRoomsML>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutMLConfiguration on the
L<AWS Clean Rooms ML|Paws::CleanRoomsML> service. Use the attributes of this class
as arguments to method PutMLConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutMLConfiguration.

=head1 SYNOPSIS

    my $cleanrooms-ml = Paws->service('CleanRoomsML');
    $cleanrooms -ml->PutMLConfiguration(
      DefaultOutputLocation => {
        RoleArn     => 'MyIamRoleArn',    # min: 20, max: 2048
        Destination => {
          S3Destination => {
            S3Uri => 'MyS3Path',          # min: 1, max: 1285

          },

        },    # OPTIONAL
      },
      MembershipIdentifier => 'MyUUID',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cleanrooms-ml/PutMLConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DefaultOutputLocation => L<Paws::CleanRoomsML::MLOutputConfiguration>

The default Amazon S3 location where ML output is stored for the
specified member.



=head2 B<REQUIRED> MembershipIdentifier => Str

The membership ID of the member that is being configured.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutMLConfiguration in L<Paws::CleanRoomsML>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

