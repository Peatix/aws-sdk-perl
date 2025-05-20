
package Paws::RedShift::DeleteRedshiftIdcApplication;
  use Moose;
  has RedshiftIdcApplicationArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteRedshiftIdcApplication');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::DeleteRedshiftIdcApplication - Arguments for method DeleteRedshiftIdcApplication on L<Paws::RedShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteRedshiftIdcApplication on the
L<Amazon Redshift|Paws::RedShift> service. Use the attributes of this class
as arguments to method DeleteRedshiftIdcApplication.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteRedshiftIdcApplication.

=head1 SYNOPSIS

    my $redshift = Paws->service('RedShift');
    $redshift->DeleteRedshiftIdcApplication(
      RedshiftIdcApplicationArn => 'MyString',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift/DeleteRedshiftIdcApplication>

=head1 ATTRIBUTES


=head2 B<REQUIRED> RedshiftIdcApplicationArn => Str

The ARN for a deleted Amazon Redshift IAM Identity Center application.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteRedshiftIdcApplication in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

