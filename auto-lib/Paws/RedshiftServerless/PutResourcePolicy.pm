
package Paws::RedshiftServerless::PutResourcePolicy;
  use Moose;
  has Policy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policy' , required => 1);
  has ResourceArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceArn' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutResourcePolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedshiftServerless::PutResourcePolicyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftServerless::PutResourcePolicy - Arguments for method PutResourcePolicy on L<Paws::RedshiftServerless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutResourcePolicy on the
L<Redshift Serverless|Paws::RedshiftServerless> service. Use the attributes of this class
as arguments to method PutResourcePolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutResourcePolicy.

=head1 SYNOPSIS

    my $redshift-serverless = Paws->service('RedshiftServerless');
    my $PutResourcePolicyResponse = $redshift -serverless->PutResourcePolicy(
      Policy      => 'MyString',
      ResourceArn => 'MyString',

    );

    # Results:
    my $ResourcePolicy = $PutResourcePolicyResponse->ResourcePolicy;

    # Returns a L<Paws::RedshiftServerless::PutResourcePolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift-serverless/PutResourcePolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Policy => Str

The policy to create or update. For example, the following policy
grants a user authorization to restore a snapshot.

C<"{\"Version\": \"2012-10-17\", \"Statement\" : [{ \"Sid\":
\"AllowUserRestoreFromSnapshot\", \"Principal\":{\"AWS\":
[\"739247239426\"]}, \"Action\":
[\"redshift-serverless:RestoreFromSnapshot\"] , \"Effect\": \"Allow\"
}]}">



=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) of the account to create or update a
resource policy for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutResourcePolicy in L<Paws::RedshiftServerless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

