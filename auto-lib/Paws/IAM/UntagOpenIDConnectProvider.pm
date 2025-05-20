
package Paws::IAM::UntagOpenIDConnectProvider;
  use Moose;
  has OpenIDConnectProviderArn => (is => 'ro', isa => 'Str', required => 1);
  has TagKeys => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UntagOpenIDConnectProvider');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::UntagOpenIDConnectProvider - Arguments for method UntagOpenIDConnectProvider on L<Paws::IAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UntagOpenIDConnectProvider on the
L<AWS Identity and Access Management|Paws::IAM> service. Use the attributes of this class
as arguments to method UntagOpenIDConnectProvider.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UntagOpenIDConnectProvider.

=head1 SYNOPSIS

    my $iam = Paws->service('IAM');
    $iam->UntagOpenIDConnectProvider(
      OpenIDConnectProviderArn => 'MyarnType',
      TagKeys                  => [
        'MytagKeyType', ...    # min: 1, max: 128
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iam/UntagOpenIDConnectProvider>

=head1 ATTRIBUTES


=head2 B<REQUIRED> OpenIDConnectProviderArn => Str

The ARN of the OIDC provider in IAM from which you want to remove tags.

This parameter allows (through its regex pattern
(http://wikipedia.org/wiki/regex)) a string of characters consisting of
upper and lowercase alphanumeric characters with no spaces. You can
also include any of the following characters: _+=,.@-



=head2 B<REQUIRED> TagKeys => ArrayRef[Str|Undef]

A list of key names as a simple array of strings. The tags with
matching keys are removed from the specified OIDC provider.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UntagOpenIDConnectProvider in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

