
package Paws::EMR::GetPersistentAppUIPresignedURL;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str');
  has AuthProxyCall => (is => 'ro', isa => 'Bool');
  has ExecutionRoleArn => (is => 'ro', isa => 'Str');
  has PersistentAppUIId => (is => 'ro', isa => 'Str', required => 1);
  has PersistentAppUIType => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetPersistentAppUIPresignedURL');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EMR::GetPersistentAppUIPresignedURLOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::GetPersistentAppUIPresignedURL - Arguments for method GetPersistentAppUIPresignedURL on L<Paws::EMR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetPersistentAppUIPresignedURL on the
L<Amazon EMR|Paws::EMR> service. Use the attributes of this class
as arguments to method GetPersistentAppUIPresignedURL.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetPersistentAppUIPresignedURL.

=head1 SYNOPSIS

    my $elasticmapreduce = Paws->service('EMR');
    my $GetPersistentAppUIPresignedURLOutput =
      $elasticmapreduce->GetPersistentAppUIPresignedURL(
      PersistentAppUIId   => 'MyXmlStringMaxLen256',
      ApplicationId       => 'MyXmlStringMaxLen256',    # OPTIONAL
      AuthProxyCall       => 1,                         # OPTIONAL
      ExecutionRoleArn    => 'MyArnType',               # OPTIONAL
      PersistentAppUIType => 'SHS',                     # OPTIONAL
      );

    # Results:
    my $PresignedURL = $GetPersistentAppUIPresignedURLOutput->PresignedURL;
    my $PresignedURLReady =
      $GetPersistentAppUIPresignedURLOutput->PresignedURLReady;

    # Returns a L<Paws::EMR::GetPersistentAppUIPresignedURLOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce/GetPersistentAppUIPresignedURL>

=head1 ATTRIBUTES


=head2 ApplicationId => Str

The application ID associated with the presigned URL.



=head2 AuthProxyCall => Bool

A boolean that represents if the caller is an authentication proxy
call.



=head2 ExecutionRoleArn => Str

The execution role ARN associated with the presigned URL.



=head2 B<REQUIRED> PersistentAppUIId => Str

The persistent application user interface ID associated with the
presigned URL.



=head2 PersistentAppUIType => Str

The persistent application user interface type associated with the
presigned URL.

Valid values are: C<"SHS">, C<"TEZ">, C<"YTS">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetPersistentAppUIPresignedURL in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

