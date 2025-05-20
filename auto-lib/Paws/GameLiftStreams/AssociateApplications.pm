
package Paws::GameLiftStreams::AssociateApplications;
  use Moose;
  has ApplicationIdentifiers => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Identifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateApplications');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/streamgroups/{Identifier}/associations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLiftStreams::AssociateApplicationsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLiftStreams::AssociateApplications - Arguments for method AssociateApplications on L<Paws::GameLiftStreams>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateApplications on the
L<Amazon GameLift Streams|Paws::GameLiftStreams> service. Use the attributes of this class
as arguments to method AssociateApplications.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateApplications.

=head1 SYNOPSIS

    my $gameliftstreams = Paws->service('GameLiftStreams');
    my $AssociateApplicationsOutput = $gameliftstreams->AssociateApplications(
      ApplicationIdentifiers => [
        'MyIdentifier', ...    # min: 1, max: 128
      ],
      Identifier => 'MyIdentifier',

    );

    # Results:
    my $ApplicationArns = $AssociateApplicationsOutput->ApplicationArns;
    my $Arn             = $AssociateApplicationsOutput->Arn;

    # Returns a L<Paws::GameLiftStreams::AssociateApplicationsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gameliftstreams/AssociateApplications>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationIdentifiers => ArrayRef[Str|Undef]

A set of applications to associate with the stream group.

This value is a set of either Amazon Resource Names (ARN)
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html)
or IDs that uniquely identify application resources. Format example:
ARN-C<arn:aws:gameliftstreams:us-west-2:123456789012:application/a-9ZY8X7Wv6>
or ID-C<a-9ZY8X7Wv6>.



=head2 B<REQUIRED> Identifier => Str

A stream group to associate to the applications.

This value is a Amazon Resource Name (ARN)
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html)
or ID that uniquely identifies the stream group resource. Format
example:
ARN-C<arn:aws:gameliftstreams:us-west-2:123456789012:streamgroup/sg-1AB2C3De4>
or ID-C<sg-1AB2C3De4>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateApplications in L<Paws::GameLiftStreams>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

