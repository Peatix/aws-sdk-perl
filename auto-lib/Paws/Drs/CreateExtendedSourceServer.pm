
package Paws::Drs::CreateExtendedSourceServer;
  use Moose;
  has SourceServerArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceServerArn', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Drs::TagsMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateExtendedSourceServer');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/CreateExtendedSourceServer');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Drs::CreateExtendedSourceServerResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Drs::CreateExtendedSourceServer - Arguments for method CreateExtendedSourceServer on L<Paws::Drs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateExtendedSourceServer on the
L<Elastic Disaster Recovery Service|Paws::Drs> service. Use the attributes of this class
as arguments to method CreateExtendedSourceServer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateExtendedSourceServer.

=head1 SYNOPSIS

    my $drs = Paws->service('Drs');
    my $CreateExtendedSourceServerResponse = $drs->CreateExtendedSourceServer(
      SourceServerArn => 'MySourceServerARN',
      Tags            => {
        'MyTagKey' => 'MyTagValue',    # key: max: 256, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $SourceServer = $CreateExtendedSourceServerResponse->SourceServer;

    # Returns a L<Paws::Drs::CreateExtendedSourceServerResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/drs/CreateExtendedSourceServer>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SourceServerArn => Str

This defines the ARN of the source server in staging Account based on
which you want to create an extended source server.



=head2 Tags => L<Paws::Drs::TagsMap>

A list of tags associated with the extended source server.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateExtendedSourceServer in L<Paws::Drs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

