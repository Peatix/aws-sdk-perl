
package Paws::Omics::CreateShare;
  use Moose;
  has PrincipalSubscriber => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'principalSubscriber', required => 1);
  has ResourceArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceArn', required => 1);
  has ShareName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'shareName');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateShare');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/share');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Omics::CreateShareResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::CreateShare - Arguments for method CreateShare on L<Paws::Omics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateShare on the
L<Amazon Omics|Paws::Omics> service. Use the attributes of this class
as arguments to method CreateShare.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateShare.

=head1 SYNOPSIS

    my $omics = Paws->service('Omics');
    my $CreateShareResponse = $omics->CreateShare(
      PrincipalSubscriber => 'MyString',
      ResourceArn         => 'MyString',
      ShareName           => 'MyShareName',    # OPTIONAL
    );

    # Results:
    my $ShareId   = $CreateShareResponse->ShareId;
    my $ShareName = $CreateShareResponse->ShareName;
    my $Status    = $CreateShareResponse->Status;

    # Returns a L<Paws::Omics::CreateShareResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/omics/CreateShare>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PrincipalSubscriber => Str

The principal subscriber is the account being offered shared access to
the resource.



=head2 B<REQUIRED> ResourceArn => Str

The ARN of the resource to be shared.



=head2 ShareName => Str

A name that the owner defines for the share.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateShare in L<Paws::Omics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

