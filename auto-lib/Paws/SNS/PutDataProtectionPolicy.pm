
package Paws::SNS::PutDataProtectionPolicy;
  use Moose;
  has DataProtectionPolicy => (is => 'ro', isa => 'Str', required => 1);
  has ResourceArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutDataProtectionPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SNS::PutDataProtectionPolicy - Arguments for method PutDataProtectionPolicy on L<Paws::SNS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutDataProtectionPolicy on the
L<Amazon Simple Notification Service|Paws::SNS> service. Use the attributes of this class
as arguments to method PutDataProtectionPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutDataProtectionPolicy.

=head1 SYNOPSIS

    my $sns = Paws->service('SNS');
    $sns->PutDataProtectionPolicy(
      DataProtectionPolicy => 'MyattributeValue',
      ResourceArn          => 'MytopicARN',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sns/PutDataProtectionPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DataProtectionPolicy => Str

The JSON serialization of the topic's C<DataProtectionPolicy>.

The C<DataProtectionPolicy> must be in JSON string format.

Length Constraints: Maximum length of 30,720.



=head2 B<REQUIRED> ResourceArn => Str

The ARN of the topic whose C<DataProtectionPolicy> you want to add or
update.

For more information about ARNs, see Amazon Resource Names (ARNs)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
in the Amazon Web Services General Reference.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutDataProtectionPolicy in L<Paws::SNS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

